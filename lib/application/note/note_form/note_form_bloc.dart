import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:meta/meta.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/interface/i_note_repository.dart';
import 'package:sched/domain/notes/model/note_model.dart';
import 'package:sched/infrastructure/note/DTO/note_data_transfer_objects.dart';
import 'package:sched/infrastructure/note/repository/note_repository.dart';

import '../../../domain/notes/value_objects.dart';


part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';
@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) ;
  @override
  Stream<NoteFormState> mapEventToState(NoteFormEvent event) async* {
    yield* event.map(
        initialized:(e) async*{
          if(e.note==null){
            yield state;
          } else{
           yield state.copyWith(
              note: e.note!,
              isEditing:true
            );
          }
        },
        bodyChanged: (e) async*{
          yield state.copyWith(
            note: state.note.copyWith(
             body: NoteBody(e.bodyStr)  
            ),
            saveFailureOrSuccess: none()
          );
        },
        colorChanged: (e) async*{
          yield state.copyWith(
              note: state.note.copyWith(
                  color: NoteColor(e.color)
              ),
              saveFailureOrSuccess: none()
          );
        },
        todosChanged:(e) async*{
          yield state.copyWith(
              note: state.note.copyWith(
                 todos: ListOfThree((e.bodyList.map((e) => e.toDomain()))
                     .toImmutableList())
              ),
              saveFailureOrSuccess: none()
          );
        },
        saved:(e) async*{
        late  Either<NoteFailure, Unit> failureOrSuccess;
          yield state.copyWith(
              isSaving:true,
              saveFailureOrSuccess: none()
          );
          if(state.note.failureOption.isNone()){
           failureOrSuccess = state.isEditing?  await _noteRepository.update
             (state.note):
                await _noteRepository.create(state.note);
          }
          yield state.copyWith(
              isSaving:true,
              showErrorMessages: true,
              saveFailureOrSuccess: some(failureOrSuccess)
          );
        });
  }
}
