part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
const factory NoteFormState({
  required NoteModel note,
  required bool showErrorMessages,
  required bool isSaving,
  // her we can differentiate between  if hte note i saving or updating
  required bool isEditing,
  required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess
})=_NoteFormState;
factory NoteFormState.initial()=> NoteFormState(
    note: NoteModel.empty(),
    showErrorMessages: false,
    isSaving: false,
    isEditing: false,
    saveFailureOrSuccess: none());
}
