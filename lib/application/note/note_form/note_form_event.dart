part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
const factory NoteFormEvent.initialized(NoteModel? note)=_Initialized;
const factory NoteFormEvent.bodyChanged(String bodyStr)=_BodyChanged;
const factory NoteFormEvent.colorChanged(Color color)=_ColorChanged;
const factory NoteFormEvent.todosChanged(List<TodoItemDto> bodyList)=_TodosChanged;
const factory NoteFormEvent.saved()=_Saved;
}