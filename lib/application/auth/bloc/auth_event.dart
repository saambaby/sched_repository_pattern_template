part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory  AuthEvent.emailChanged(String email)=EmailChanged;
  const factory  AuthEvent.passwordChanged(String password)
  =PasswordChanged;
  const factory  AuthEvent.signUpWithEmailAndPasswordPressed()
  =SignUpWithEmailAndPasswordPressed;
  const factory  AuthEvent.signInWithEmailAndPasswordPressed()
  =SignInWithEmailAndPasswordPressed;
  const factory  AuthEvent.signInWithGooglePressed()
  =SignInWithGooglePressedPressed;

}
