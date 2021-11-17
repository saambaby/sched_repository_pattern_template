import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:sched/domain/core/failures/failures.dart';
import 'package:sched/domain/core/value_object.dart';
import 'package:sched/domain/core/value_transformers.dart';
import 'package:sched/domain/core/value_validators.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const max = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
        // if the flat map  return left (value failure), this case the flat
        // mat and what ever it calls skip
        /// For eg : if(false&&true)  here the if will return false and skips
      /// first with out checking true
        validateMaxStringLength(input, max).flatMap(validateStringNotEmpty));
  }

  NoteBody._(this.value);
}
class TodoName extends ValueObject<String> {
@override
final Either<ValueFailure<String>, String> value;
static const max = 30;

factory TodoName(String input) {
  return TodoName._(
      validateMaxStringLength(input, max).
           flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine));
}

TodoName._(this.value);
}
class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  factory NoteColor(Color input) {
    return NoteColor._(
      Right(makeColorOpaque(input))
    );
  }

  NoteColor._(this.value);
}
class ListOfThree<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  factory ListOfThree(KtList<T> input) {
    return ListOfThree._(
      validateMaxListLength(input,3),
       );
  }
  int get length{
    return value.getOrElse(() => emptyList()).size;
  }
  bool get isFull{
    return length==3;
  }
  ListOfThree._(this.value);
}
