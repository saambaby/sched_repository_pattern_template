import 'package:dartz/dartz.dart';
import 'package:sched/domain/auth/failures/auth_failure.dart';
import 'package:sched/domain/auth/value_objects.dart';


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
}