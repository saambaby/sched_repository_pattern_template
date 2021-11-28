import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:sched/domain/notes/failure/note_failure.dart';
import 'package:sched/domain/notes/interface/i_note_repository.dart';
import 'package:sched/domain/notes/model/note_model.dart';

part 'note_watcher_bloc.freezed.dart';

part 'note_watcher_event.dart';

part 'note_watcher_state.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherState get initial => const NoteWatcherState.initial();

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial());


 late  StreamSubscription <Either<NoteFailure, KtList<NoteModel>>>
  noteSubscription;
  @override
  Stream<NoteWatcherState> mapEventToState(NoteWatcherEvent event) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NoteWatcherState.loading();

        /// yield each for yield Events that comes on     stream
        /// here we are watching all events but if we want to watch both
        /// uncompleted and completed its not possible because at a time the
        /// stream never closes until the page is open
       noteSubscription= _noteRepository.watchAll().listen((failureOrNote) 
       =>add(NoteWatcherEvent.notesReceived(failureOrNote)));
      },
      watchUncompletedStarted: (e) async* {
        yield const NoteWatcherState.loading();
        await noteSubscription.cancel();
        noteSubscription= _noteRepository.watchUncompleted().listen((failureOrNote) =>
            add(NoteWatcherEvent.notesReceived(failureOrNote)));
      },
      notesReceived: (e) async* {

        yield e.failureOrNote.fold((f) => NoteWatcherState.failure(f),
            (s) => NoteWatcherState.success(s));
      },
    );
  }
  @override
  Future<void> close()async {
    await noteSubscription.cancel();
    return super.close();
  }
}

