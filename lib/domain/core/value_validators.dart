import 'package:dartz/dartz.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:validators/validators.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return Right(input);
  } else {
    print("test fail$input");
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (isAlphanumeric(input)&& input.length>=8) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidPassword(failedValue: input));
  }
}
Either<ValueFailure<String>, String> validateInputField(String input) {
  if (isAlpha(input)&& input.length<=2) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidFieldValue(failedValue: input));
  }
}