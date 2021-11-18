import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:sched/domain/core/value_object.dart';
import 'package:sched/domain/notes/value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem(
      {required UniqueId id,
      required TodoName name,
      required bool isDone}) = _TodoItem;

  factory TodoItem.empty() =>
      TodoItem(id: UniqueId(), name: TodoName(''), isDone: false);

  // here we are doing input validation for the whole model into one
  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((l) => some(l), (r) => none());
  }
}
