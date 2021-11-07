import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sched/domain/auth/failures/auth_failure.dart';
import 'package:sched/domain/auth/i_auth_service.dart';
import 'package:sched/domain/auth/value_objects.dart';

class AuthService implements IAuthService {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthService({required this.firebaseAuth, required this.googleSignIn});

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return const Right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Left(AuthFailure.emailAlreadyInUse());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return const Right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return const Left(AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
   try{
     final googleUser = await googleSignIn.signIn();
     if (googleUser == null) {
       return const Left(AuthFailure.cancelledByUser());
     }
     final googleAuthentication= await googleUser.authentication;
     final authCredential =GoogleAuthProvider.credential(
         idToken: googleAuthentication.idToken,
         accessToken: googleAuthentication.accessToken);
     return firebaseAuth.signInWithCredential(authCredential).then((value) =>
     const  Right(unit));
   } on PlatformException catch(e){
       return const Left(AuthFailure.serverError());
   }
  }
}