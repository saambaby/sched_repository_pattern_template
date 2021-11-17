import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:validators/validators.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (isAlphanumeric(input) && input.length >= 8) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateInputField(String input) {
  if (isAlpha(input) && input.length <= 2) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidFieldValue(failedValue: input));
  }
}

// For notes
Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int max) {
  if (input.length <= max) {
    return Right(input);
  } else {
    return Left(ValueFailure.exceedingLength(failedValue: input, max: max));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return Left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return Right(input);
  } else {
    return Left(ValueFailure.multiLine(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int max) {
  if (input.size <= max) {
    return Right(input);
  } else {
    return Left(ValueFailure.listTooLong(failedValue: input, max: max));
  }
}
