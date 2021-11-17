import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // authentication value failures
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    required String failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidFieldValue({
    required String failedValue,
  }) = InvalidFieldValue<T>;

  // notes value failures
  const factory ValueFailure.exceedingLength({required T failedValue, required int max}) = ExceedingLength<T>;

  const factory ValueFailure.empty({required T failedValue})
  =Empty<T>;

  const factory ValueFailure.listTooLong({required T failedValue,required int
  max}) = ListTooLong<T>;
  const factory ValueFailure.multiLine({required T failedValue}) = MultiLine<T>;
}
