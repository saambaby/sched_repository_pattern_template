import 'package:dartz/dartz.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/interface/i_note_repository.dart';
import 'package:sched/domain/notes/model/note_model.dart';

class NoteRepository extends INoteRepository {



  @override
  Stream<Either<NoteFailure, KtList<NoteModel>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<NoteFailure, KtList<NoteModel>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, KtList<NoteModel>>> create(NoteModel note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, KtList<NoteModel>>> delete(NoteModel note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, KtList<NoteModel>>> update(NoteModel note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
