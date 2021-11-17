// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteModelTearOff {
  const _$NoteModelTearOff();

  _NoteModel call(
      {required UniqueId id,
      required NoteBody body,
      required NoteColor color,
      required ListOfThree<TodoItem> todos}) {
    return _NoteModel(
      id: id,
      body: body,
      color: color,
      todos: todos,
    );
  }
}

/// @nodoc
const $NoteModel = _$NoteModelTearOff();

/// @nodoc
mixin _$NoteModel {
  UniqueId get id => throw _privateConstructorUsedError;
  NoteBody get body => throw _privateConstructorUsedError;
  NoteColor get color => throw _privateConstructorUsedError;
  ListOfThree<TodoItem> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      NoteBody body,
      NoteColor color,
      ListOfThree<TodoItem> todos});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res> implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  final NoteModel _value;
  // ignore: unused_field
  final $Res Function(NoteModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? color = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NoteColor,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as ListOfThree<TodoItem>,
    ));
  }
}

/// @nodoc
abstract class _$NoteModelCopyWith<$Res> implements $NoteModelCopyWith<$Res> {
  factory _$NoteModelCopyWith(
          _NoteModel value, $Res Function(_NoteModel) then) =
      __$NoteModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      NoteBody body,
      NoteColor color,
      ListOfThree<TodoItem> todos});
}

/// @nodoc
class __$NoteModelCopyWithImpl<$Res> extends _$NoteModelCopyWithImpl<$Res>
    implements _$NoteModelCopyWith<$Res> {
  __$NoteModelCopyWithImpl(_NoteModel _value, $Res Function(_NoteModel) _then)
      : super(_value, (v) => _then(v as _NoteModel));

  @override
  _NoteModel get _value => super._value as _NoteModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? color = freezed,
    Object? todos = freezed,
  }) {
    return _then(_NoteModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NoteColor,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as ListOfThree<TodoItem>,
    ));
  }
}

/// @nodoc

class _$_NoteModel extends _NoteModel {
  const _$_NoteModel(
      {required this.id,
      required this.body,
      required this.color,
      required this.todos})
      : super._();

  @override
  final UniqueId id;
  @override
  final NoteBody body;
  @override
  final NoteColor color;
  @override
  final ListOfThree<TodoItem> todos;

  @override
  String toString() {
    return 'NoteModel(id: $id, body: $body, color: $color, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$NoteModelCopyWith<_NoteModel> get copyWith =>
      __$NoteModelCopyWithImpl<_NoteModel>(this, _$identity);
}

abstract class _NoteModel extends NoteModel {
  const factory _NoteModel(
      {required UniqueId id,
      required NoteBody body,
      required NoteColor color,
      required ListOfThree<TodoItem> todos}) = _$_NoteModel;
  const _NoteModel._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  NoteBody get body => throw _privateConstructorUsedError;
  @override
  NoteColor get color => throw _privateConstructorUsedError;
  @override
  ListOfThree<TodoItem> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteModelCopyWith<_NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
