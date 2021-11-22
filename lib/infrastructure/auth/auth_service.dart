import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sched/domain/auth/failure/auth_failure.dart';
import 'package:sched/domain/auth/interface/auth_interface.dart';
import 'package:sched/domain/auth/model/user_model.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'package:sched/domain/core/value_object.dart';

import '../../domain/core/failures/failures.dart';


@LazySingleton(as: IAuthService)
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
      final result =await firebaseAuth.createUserWithEmailAndPassword(email:
      emailAddressStr, password: passwordStr);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
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
      final result=await firebaseAuth.signInWithEmailAndPassword(email:
     emailAddressStr, password: passwordStr);
         return const Right(unit);
    } on FirebaseAuthException catch (e) {

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

  @override
  Either<ValueFailure<String>, UserModel>  getSignedInUser() {
    if(firebaseAuth.currentUser==null){
      return left(const ValueFailure.empty(failedValue: 'not Authenticated'));
    } else{
      return right(UserModel(id: UniqueId.fromUniqueString(firebaseAuth
          .currentUser?.uid)));
    }

  }

  @override
  Future<void> signOut() {
    return Future.wait([
      googleSignIn.signOut(),
      firebaseAuth.signOut()
    ]);
  }
}
