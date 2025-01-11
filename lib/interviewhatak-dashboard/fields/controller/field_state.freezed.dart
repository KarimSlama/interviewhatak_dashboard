// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateCopyWith<T, $Res> {
  factory $FieldStateCopyWith(
          FieldState<T> value, $Res Function(FieldState<T>) then) =
      _$FieldStateCopyWithImpl<T, $Res, FieldState<T>>;
}

/// @nodoc
class _$FieldStateCopyWithImpl<T, $Res, $Val extends FieldState<T>>
    implements $FieldStateCopyWith<T, $Res> {
  _$FieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$FieldStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FieldState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements FieldState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$FieldLoadingImplCopyWith<T, $Res> {
  factory _$$FieldLoadingImplCopyWith(_$FieldLoadingImpl<T> value,
          $Res Function(_$FieldLoadingImpl<T>) then) =
      __$$FieldLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FieldLoadingImplCopyWithImpl<T, $Res>
    extends _$FieldStateCopyWithImpl<T, $Res, _$FieldLoadingImpl<T>>
    implements _$$FieldLoadingImplCopyWith<T, $Res> {
  __$$FieldLoadingImplCopyWithImpl(
      _$FieldLoadingImpl<T> _value, $Res Function(_$FieldLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FieldLoadingImpl<T> implements FieldLoading<T> {
  const _$FieldLoadingImpl();

  @override
  String toString() {
    return 'FieldState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FieldLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FieldLoading<T> implements FieldState<T> {
  const factory FieldLoading() = _$FieldLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FieldChangedImplCopyWith<T, $Res> {
  factory _$$FieldChangedImplCopyWith(_$FieldChangedImpl<T> value,
          $Res Function(_$FieldChangedImpl<T>) then) =
      __$$FieldChangedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$FieldChangedImplCopyWithImpl<T, $Res>
    extends _$FieldStateCopyWithImpl<T, $Res, _$FieldChangedImpl<T>>
    implements _$$FieldChangedImplCopyWith<T, $Res> {
  __$$FieldChangedImplCopyWithImpl(
      _$FieldChangedImpl<T> _value, $Res Function(_$FieldChangedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FieldChangedImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FieldChangedImpl<T> implements FieldChanged<T> {
  const _$FieldChangedImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'FieldState<$T>.changed(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldChangedImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldChangedImplCopyWith<T, _$FieldChangedImpl<T>> get copyWith =>
      __$$FieldChangedImplCopyWithImpl<T, _$FieldChangedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return changed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return changed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class FieldChanged<T> implements FieldState<T> {
  const factory FieldChanged(final T value) = _$FieldChangedImpl<T>;

  T get value;

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldChangedImplCopyWith<T, _$FieldChangedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldSuccessImplCopyWith<T, $Res> {
  factory _$$FieldSuccessImplCopyWith(_$FieldSuccessImpl<T> value,
          $Res Function(_$FieldSuccessImpl<T>) then) =
      __$$FieldSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FieldSuccessImplCopyWithImpl<T, $Res>
    extends _$FieldStateCopyWithImpl<T, $Res, _$FieldSuccessImpl<T>>
    implements _$$FieldSuccessImplCopyWith<T, $Res> {
  __$$FieldSuccessImplCopyWithImpl(
      _$FieldSuccessImpl<T> _value, $Res Function(_$FieldSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FieldSuccessImpl<T> implements FieldSuccess<T> {
  const _$FieldSuccessImpl();

  @override
  String toString() {
    return 'FieldState<$T>.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FieldSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FieldSuccess<T> implements FieldState<T> {
  const factory FieldSuccess() = _$FieldSuccessImpl<T>;
}

/// @nodoc
abstract class _$$FieldErrorImplCopyWith<T, $Res> {
  factory _$$FieldErrorImplCopyWith(
          _$FieldErrorImpl<T> value, $Res Function(_$FieldErrorImpl<T>) then) =
      __$$FieldErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FieldErrorImplCopyWithImpl<T, $Res>
    extends _$FieldStateCopyWithImpl<T, $Res, _$FieldErrorImpl<T>>
    implements _$$FieldErrorImplCopyWith<T, $Res> {
  __$$FieldErrorImplCopyWithImpl(
      _$FieldErrorImpl<T> _value, $Res Function(_$FieldErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FieldErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FieldErrorImpl<T> implements FieldError<T> {
  const _$FieldErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FieldState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldErrorImplCopyWith<T, _$FieldErrorImpl<T>> get copyWith =>
      __$$FieldErrorImplCopyWithImpl<T, _$FieldErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T value) changed,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T value)? changed,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T value)? changed,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FieldLoading<T> value) loading,
    required TResult Function(FieldChanged<T> value) changed,
    required TResult Function(FieldSuccess<T> value) success,
    required TResult Function(FieldError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FieldLoading<T> value)? loading,
    TResult? Function(FieldChanged<T> value)? changed,
    TResult? Function(FieldSuccess<T> value)? success,
    TResult? Function(FieldError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FieldLoading<T> value)? loading,
    TResult Function(FieldChanged<T> value)? changed,
    TResult Function(FieldSuccess<T> value)? success,
    TResult Function(FieldError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FieldError<T> implements FieldState<T> {
  const factory FieldError({required final String error}) = _$FieldErrorImpl<T>;

  String get error;

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldErrorImplCopyWith<T, _$FieldErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
