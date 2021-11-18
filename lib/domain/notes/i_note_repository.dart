import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/model/note_model.dart';

abstract class INoteRepository{
  Stream<Either< NoteFailure,KtList<NoteModel>>> watchAll();
  Stream<Either< NoteFailure,KtList<NoteModel>>> watchUncompleted ();
  Stream<Either< NoteFailure,KtList<NoteModel>>> create (NoteModel note);
  Stream<Either< NoteFailure,KtList<NoteModel>>> update (NoteModel note);
   Stream<Either< NoteFailure,KtList<NoteModel>>> delete (NoteModel note);

}