import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/interface/i_note_repository.dart';
import 'package:sched/domain/notes/model/note_model.dart';
import 'package:sched/infrastructure/core/firestore_helpers.dart';
import 'package:sched/infrastructure/note/DTO/note_data_transfer_objects.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository extends INoteRepository {
  final FirebaseFirestore firebaseFirestore;

  NoteRepository(this.firebaseFirestore);

  @override
  Stream<Either<NoteFailure, KtList<NoteModel>>> watchAll() async* {
    final userDoc = await firebaseFirestore.userDocument();
    yield* userDoc
        .collection('notes')
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right<NoteFailure, KtList<NoteModel>>(snapshot.docs
            .map((e) => NoteDto.fromFirestore(e).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<NoteModel>>> watchUncompleted() async* {
    final userDoc = await firebaseFirestore.userDocument();
    yield* userDoc
        .collection('notes')
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((e) => NoteDto.fromFirestore(e).toDomain()))
        .map((notes) => right<NoteFailure, KtList<NoteModel>>((notes
            .where((note) =>
                note.todos.getOrCrash().iter.any((element) => !element.isDone))
            .toImmutableList())))
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(NoteModel note) async {
    try{
      final userDoc = await firebaseFirestore.userDocument();
      final userDto = NoteDto.fromDomain(note);
      await userDoc.collection('notes').doc(userDto.id).set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch(e){
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(NoteModel note) async {
    try{
      final userDoc = await firebaseFirestore.userDocument();
      final noteId= note.id.getOrCrash();
      await userDoc.collection('notes').doc(noteId).delete();
      return right(unit);
    } on FirebaseException catch(e){
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else if (e.message!.contains('NOT_FOUND')){
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(NoteModel note) async {
    try{
      final userDoc = await firebaseFirestore.userDocument();
      final userDto = NoteDto.fromDomain(note);
      await userDoc.collection('notes').doc(userDto.id).update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch(e){
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      }  else if (e.message!.contains('NOT_FOUND')){
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

 
}
