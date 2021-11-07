import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'package:sched/domain/core/failures/failures.dart';


@immutable
abstract class ValueObjects<T> {

  Either<ValueFailure<T>, T>get value;
  bool isValid()=> value.isRight();
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObjects<T> && other.value == value;
  }
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}