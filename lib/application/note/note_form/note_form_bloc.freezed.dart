// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _Initialized initialized(NoteModel? note) {
    return _Initialized(
      note,
    );
  }

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

  _TodosChanged todosChanged(List<TodoItemDto> bodyList) {
    return _TodosChanged(
      bodyList,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({NoteModel? note});

  $NoteModelCopyWith<$Res>? get note;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_Initialized(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel?,
    ));
  }

  @override
  $NoteModelCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteModelCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.note);

  @override
  final NoteModel? note;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) {
    return initialized(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(NoteModel? note) = _$_Initialized;

  NoteModel? get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) {
    return bodyChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({List<TodoItemDto> bodyList});
}

/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object? bodyList = freezed,
  }) {
    return _then(_TodosChanged(
      bodyList == freezed
          ? _value.bodyList
          : bodyList // ignore: cast_nullable_to_non_nullable
              as List<TodoItemDto>,
    ));
  }
}

/// @nodoc

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.bodyList);

  @override
  final List<TodoItemDto> bodyList;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(bodyList: $bodyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.bodyList, bodyList) ||
                const DeepCollectionEquality()
                    .equals(other.bodyList, bodyList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyList);

  @JsonKey(ignore: true)
  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) {
    return todosChanged(bodyList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) {
    return todosChanged?.call(bodyList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(bodyList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return todosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(List<TodoItemDto> bodyList) = _$_TodosChanged;

  List<TodoItemDto> get bodyList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel? note) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemDto> bodyList) todosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel? note)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemDto> bodyList)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required NoteModel note,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess}) {
    return _NoteFormState(
      note: note,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccess: saveFailureOrSuccess,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  NoteModel get note => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving =>
      throw _privateConstructorUsedError; // her we can differentiate between  if hte note i saving or updating
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {NoteModel note,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccess});

  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteModelCopyWith<$Res> get note {
    return $NoteModelCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NoteModel note,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccess});

  @override
  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccess});

  @override
  final NoteModel note;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override // her we can differentiate between  if hte note i saving or updating
  final bool isEditing;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccess;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccess: $saveFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccess, saveFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.saveFailureOrSuccess, saveFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
          {required NoteModel note,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess}) =
      _$_NoteFormState;

  @override
  NoteModel get note => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override // her we can differentiate between  if hte note i saving or updating
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
