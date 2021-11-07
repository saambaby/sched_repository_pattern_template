import 'package:dartz/dartz.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:sched/domain/core/value_objects.dart';
import 'package:sched/domain/core/value_validators.dart';

class EmailAddress extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  EmailAddress._(this.value);
}

class Password extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  Password._(this.value);
}
class FieldConstant extends ValueObjects<String> {
  @override
   final Either<ValueFailure<String>, String> value;

  factory FieldConstant(String input) {
    return FieldConstant._(validatePassword(input));
  }
  FieldConstant._(this.value);
}
