import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sched/domain/auth/failure/auth_failure.dart';
import 'package:sched/domain/auth/i_auth_service.dart';
import 'package:sched/domain/auth/value_objects.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;

  AuthState get initialState => AuthState.initial();

  AuthBloc(this.authService) : super(AuthState.initial());
  // {
  //   late Either<AuthFailure, Unit> failureOrSuccess;
  //   on<AuthEvent>((event, emit) {
  //     event.map(
  //       emailChanged: (e) async {
  //         emit(state.copyWith(
  //             email: EmailAddress(e.email),
  //             authFailureOrSuccessOption: none()));
  //       },
  //       passwordChanged: (e) async {
  //         emit(state.copyWith(
  //             password: Password(e.password),
  //             authFailureOrSuccessOption: none()));
  //       },
  //       signUpWithEmailAndPasswordPressed: (e) async {
  //         if (state.email.isValid() && state.password.isValid()) {
  //           emit(state.copyWith(
  //               isSubmitting: true, authFailureOrSuccessOption: none()));
  //           final failureOrSuccess =
  //               await authService.registerWithEmailAndPassword(
  //                   emailAddress: state.email, password: state.password);
  //           emit(state.copyWith(
  //               isSubmitting: false,
  //               authFailureOrSuccessOption: some(failureOrSuccess)));
  //         } else {
  //           emit(state.copyWith(
  //               isSubmitting: true,
  //               showErrorMessage: true,
  //               authFailureOrSuccessOption: none()));
  //         }
  //       },
  //       signInWithEmailAndPasswordPressed: (e) async {
  //         if (state.email.isValid() && state.password.isValid()) {
  //           emit(state.copyWith(
  //               isSubmitting: true, authFailureOrSuccessOption: none()));
  //           failureOrSuccess = await authService.signInWithEmailAndPassword(
  //                   emailAddress: state.email, password: state.password);
  //         }
  //         emit(state.copyWith(
  //             isSubmitting: false,
  //             authFailureOrSuccessOption: some(failureOrSuccess)));
  //       },
  //       signInWithGooglePressed: (e) async {
  //         emit(state.copyWith(
  //             isSubmitting: true, authFailureOrSuccessOption: none()));
  //         final failureOrSuccess = await authService.signInWithGoogle();
  //         emit(state.copyWith(
  //             isSubmitting: false,
  //             showErrorMessage: true,
  //             authFailureOrSuccessOption: optionOf(failureOrSuccess)));
  //       },
  //     );
  //   });
  // }
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.email),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
      },
      signUpWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            authService.registerWithEmailAndPassword);
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          authService.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await authService.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<AuthState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.email,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
