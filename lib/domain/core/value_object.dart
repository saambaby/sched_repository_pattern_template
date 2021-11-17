import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sched/domain/auth/value_objects.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';


@immutable
abstract class ValueObject<T> {

  Either<ValueFailure<T>, T>get value;
  /// Throws [UnexpectedValueError] containing  [ValueFailure]
  T getOrCrash(){
    return value.fold((left) => throw UnexpectedValueError(left),
                     (right) => right);
  }
  bool isValid()=> value.isRight();
  Either<ValueFailure<dynamic>, Unit>get failureOrUnit{
    return value.fold(
            (l) => Left(l),
            (r) => const Right(unit));
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(Right(const Uuid().v1()
    ));
  }
  factory UniqueId.fromUniqueString(String? uniqueId){
    return UniqueId._( Right(uniqueId!));
  }
  UniqueId._(this.value);
}
