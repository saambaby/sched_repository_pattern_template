part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required EmailAddress email,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessage,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _AuthState;

  factory AuthState.initial() => AuthState(
      email: EmailAddress(''),
      password: Password(''),
      showErrorMessage: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());

}
