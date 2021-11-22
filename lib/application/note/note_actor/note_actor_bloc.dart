import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sched/application/auth/bloc/intro/auth_init_bloc.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/interface/i_note_repository.dart';
import 'package:sched/domain/notes/model/note_model.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;
  NoteActorState get initial => const NoteActorState.initial();
  NoteActorBloc(this._noteRepository) : super(const NoteActorState.initial()) ;

  @override
  Stream<NoteActorState> mapEventToState( NoteActorEvent event) async* {
    yield const NoteActorState.actionProgress();
    final failureOrSuccess = await _noteRepository.delete(event.note);
    yield failureOrSuccess.fold((f) => NoteActorState.deleteFailure(f), (_)
    => const NoteActorState.deleteSuccess());

  }
}
