import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'package:sched/domain/core/value_object.dart';
import 'package:sched/domain/notes/model/note_model.dart';
import 'package:sched/domain/notes/model/todo_item.dart';
import 'package:sched/domain/notes/value_objects.dart';

part 'note_data_transfer_objects.freezed.dart';

part 'note_data_transfer_objects.g.dart';

@freezed
class NoteDto with _$NoteDto {
  const NoteDto._();

  const factory NoteDto(
      {
      @JsonKey(ignore:true)
      String? id,
      required String body,
      required int color,
      required List<TodoItemDto> todos,
        // Placeholder------> time (when arrives from Firestore)
       @ServerTimestampConverter ()
       required  FieldValue serverTimeStamp
      }) = _NoteDto;


  factory NoteDto.fromDomain(NoteModel note) {
    return NoteDto(
        id: note.id.getOrCrash(),
        body: note.body.getOrCrash(),
        color: note.color.getOrCrash().value,
        todos: note.todos
            .getOrCrash()
            .map((todo) => TodoItemDto.fromDomain(todo))
            .asList(),
        serverTimeStamp: FieldValue.serverTimestamp()
    );
  }
  NoteModel toDomain(){
    return NoteModel(
        id: UniqueId.fromUniqueString(id),
        body: NoteBody(body),
        color: NoteColor(Color(color)),
        todos: ListOfThree(todos.map((e) => e.toDomain()).toImmutableList()));
  }
  factory NoteDto.fromJson(Map<String, dynamic> json) => _$NoteDtoFromJson(json);
  factory NoteDto.fromFirestore(DocumentSnapshot doc){
    return NoteDto.fromJson(doc.data() as Map<String, dynamic>).copyWith
      (id:doc.id);
  }
}
class ServerTimestampConverter  extends JsonConverter<FieldValue, Object>{
  const ServerTimestampConverter();
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue object) => object;

}
@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const TodoItemDto._();

  const factory TodoItemDto({
    required String id,
    required String name,
    required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    /// here we are using getOr
    return TodoItemDto(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash(),
        done: todoItem.isDone);
  }

  TodoItem toDomain() {
    return TodoItem(
        id: UniqueId.fromUniqueString(id), name: TodoName(name), isDone: done);
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
