part of 'auth_init_bloc.dart';

@freezed
class AuthInitState with _$AuthInitState {
const factory AuthInitState.initial()= Initial;
const factory AuthInitState.authenticated()= Authenticated;
const factory AuthInitState.unauthenticated()=Unauthenticated;
}
