import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/model/note_model.dart';

abstract class INoteRepository{
  Stream<Either< NoteFailure,KtList<NoteModel>>> watchAll();
  Stream<Either< NoteFailure,KtList<NoteModel>>> watchUncompleted ();
  Future<Either< NoteFailure,Unit>> create (NoteModel note);
  Future<Either< NoteFailure,Unit>> update (NoteModel note);
  Future<Either< NoteFailure,Unit>> delete (NoteModel note);

}