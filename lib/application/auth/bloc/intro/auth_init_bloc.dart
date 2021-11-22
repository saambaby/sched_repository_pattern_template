import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sched/domain/auth/interface/auth_interface.dart';


part 'auth_init_event.dart';
part 'auth_init_state.dart';
part 'auth_init_bloc.freezed.dart';

@injectable
class AuthInitBloc extends Bloc<AuthInitEvent, AuthInitState> {
  final   IAuthService _authService;
  AuthInitState get initialState => const AuthInitState.initial();
  AuthInitBloc(this._authService) : super(const AuthInitState.initial());

  @override
  Stream<AuthInitState> mapEventToState(
      AuthInitEvent event
      ) async*{
    yield* event.map(
        authCheckRequested: (e) async*{
          final userOption =  _authService.getSignedInUser();
          yield userOption.fold(
                  (l) =>const AuthInitState.unauthenticated() ,
                  (r) => const AuthInitState.authenticated());
        },
        signedOut:(e) async*{
          await _authService.signOut();
          yield const AuthInitState.unauthenticated();
        });
  }

}
