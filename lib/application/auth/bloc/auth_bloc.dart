import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sched/domain/auth/failures/auth_failure.dart';
import 'package:sched/domain/auth/i_auth_service.dart';
import 'package:sched/domain/auth/value_objects.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  AuthState get initialState=>AuthState.initial();
  AuthBloc(this.authService) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) {
       event.map(
           emailChanged: (e) async{
             emit(state.copyWith(
               email: EmailAddress(e.email),
               authFailureOrSuccessOption: none()
             ));
           },
           passwordChanged: (e) async{
             emit(state.copyWith(
               password: Password(e.password),
               authFailureOrSuccessOption: none()
             ));
           },
           signUpWithEmailAndPasswordPressed: (e) async {
            if(state.email.isValid()&& state.password.isValid()){
              emit(state.copyWith(
                  isSubmitting:true,
                  authFailureOrSuccessOption: none()
              ));
              final failureOrSuccess= await authService
                  .registerWithEmailAndPassword(
                  emailAddress: state.email,
                  password: state.password);
              emit(state.copyWith(
                  isSubmitting:true,
                  authFailureOrSuccessOption: some(failureOrSuccess)
              ));
            } else{
              emit(state.copyWith(
                   isSubmitting:true,
                  showErrorMessage: true,
                  authFailureOrSuccessOption: none()
              ));
            }
           },
           signInWithEmailAndPasswordPressed: (e) async {
             if(state.email.isValid()&& state.password.isValid()){
               emit(state.copyWith(
                   isSubmitting:true,
                   authFailureOrSuccessOption: none()
               ));
               final failureOrSuccess= await authService
                   .signInWithEmailAndPassword(
                   emailAddress: state.email,
                   password: state.password);
               emit(state.copyWith(
                   isSubmitting:true,
                   authFailureOrSuccessOption: some(failureOrSuccess)
               ));
             } else{
               emit(state.copyWith(
                   isSubmitting:true,
                   showErrorMessage: true,
                   authFailureOrSuccessOption: none()
               ));
             }
           },
           signInWithGooglePressed: (e) async
           {
             emit(state.copyWith(
               isSubmitting:true,
               authFailureOrSuccessOption: none()
             ));
             final failureOrSuccess= await authService.signInWithGoogle();
             emit(state.copyWith(
                 isSubmitting:false,
                 authFailureOrSuccessOption: some(failureOrSuccess)
             ));
           },
       );

    });

  }

  }

