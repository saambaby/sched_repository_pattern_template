part of 'auth_init_bloc.dart';

@freezed
class AuthInitEvent with _$AuthInitEvent {
const factory AuthInitEvent.authCheckRequested()=AuthCheckRequested;
const factory AuthInitEvent.signedOut()=SignedOut;
}
