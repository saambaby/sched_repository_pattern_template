import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:sched/domain/core/value_object.dart';
import 'package:sched/domain/notes/model/todo_item.dart';
import 'package:sched/domain/notes/value_objects.dart';

part 'note_model.freezed.dart';

@freezed
abstract class NoteModel implements _$NoteModel {
  const NoteModel._();

  const factory NoteModel(
      {required UniqueId id,
      required NoteBody body,
      required NoteColor color,
      required ListOfThree<TodoItem> todos}) = _NoteModel;

  factory NoteModel.empty() => NoteModel(
      id: UniqueId(),
      body: NoteBody(''),
      color: NoteColor(NoteColor.predefinedColors[0]),
      todos: ListOfThree(emptyList()));

  ///In core value object we have created a method which will check if there
  ///is error( automatically checked when value is entered)and return [Left
  ///(ValueFailure<dynamic>)]
  ///or a unit
  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(todos
            .getOrCrash()
            // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
            .map((todoItem) => todoItem.failureOption)
            .filter((o) => o.isSome())
            // If we can't get the 0th element, the list is empty. In such a case, it's valid.
            .getOrElse(0, (_) => none())
           ///TODO PLease check why the code return an object when Right is
            .fold(() => right(unit), (f) => left(f)))
        .fold((l) => some(l), (r) => none());
  }
}
