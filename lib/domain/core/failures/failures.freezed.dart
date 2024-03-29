// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> invalidPassword<T>({required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidFieldValue<T> invalidFieldValue<T>({required String failedValue}) {
    return InvalidFieldValue<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  ListTooLong<T> listTooLong<T>({required T failedValue, required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  MultiLine<T> multiLine<T>({required T failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String failedValue}) = _$InvalidEmail<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidFieldValueCopyWith<T, $Res> {
  factory $InvalidFieldValueCopyWith(InvalidFieldValue<T> value,
          $Res Function(InvalidFieldValue<T>) then) =
      _$InvalidFieldValueCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidFieldValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidFieldValueCopyWith<T, $Res> {
  _$InvalidFieldValueCopyWithImpl(
      InvalidFieldValue<T> _value, $Res Function(InvalidFieldValue<T>) _then)
      : super(_value, (v) => _then(v as InvalidFieldValue<T>));

  @override
  InvalidFieldValue<T> get _value => super._value as InvalidFieldValue<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidFieldValue<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidFieldValue<T> implements InvalidFieldValue<T> {
  const _$InvalidFieldValue({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidFieldValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidFieldValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidFieldValueCopyWith<T, InvalidFieldValue<T>> get copyWith =>
      _$InvalidFieldValueCopyWithImpl<T, InvalidFieldValue<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return invalidFieldValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return invalidFieldValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidFieldValue != null) {
      return invalidFieldValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return invalidFieldValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return invalidFieldValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidFieldValue != null) {
      return invalidFieldValue(this);
    }
    return orElse();
  }
}

abstract class InvalidFieldValue<T> implements ValueFailure<T> {
  const factory InvalidFieldValue({required String failedValue}) =
      _$InvalidFieldValue<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidFieldValueCopyWith<T, InvalidFieldValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({required T failedValue, required int max}) =
      _$ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({required T failedValue, required int max}) =
      _$ListTooLong<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiLineCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultiLine<T> implements MultiLine<T> {
  const _$MultiLine({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidFieldValue,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue) multiLine,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidFieldValue,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) invalidPassword,
    required TResult Function(InvalidFieldValue<T> value) invalidFieldValue,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(MultiLine<T> value) multiLine,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? invalidPassword,
    TResult Function(InvalidFieldValue<T> value)? invalidFieldValue,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements ValueFailure<T> {
  const factory MultiLine({required T failedValue}) = _$MultiLine<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
