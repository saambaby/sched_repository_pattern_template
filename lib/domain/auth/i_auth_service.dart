import 'package:dartz/dartz.dart';
import 'package:sched/domain/auth/model/user_model.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'failure/auth_failure.dart';


abstract class IAuthService{
   Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
      required EmailAddress emailAddress,
      required Password password,
   });
   Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
      required EmailAddress emailAddress,
      required Password password,
   });
   Future<Either<AuthFailure, Unit>> signInWithGoogle();
   Option<UserModel> getSignedInUser();
   Future<void> signOut();

}