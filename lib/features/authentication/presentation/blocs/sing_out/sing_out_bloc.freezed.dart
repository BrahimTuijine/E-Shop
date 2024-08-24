// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingOutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? singOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingOut value) singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingOut value)? singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingOut value)? singOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingOutEventCopyWith<$Res> {
  factory $SingOutEventCopyWith(
          SingOutEvent value, $Res Function(SingOutEvent) then) =
      _$SingOutEventCopyWithImpl<$Res, SingOutEvent>;
}

/// @nodoc
class _$SingOutEventCopyWithImpl<$Res, $Val extends SingOutEvent>
    implements $SingOutEventCopyWith<$Res> {
  _$SingOutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SingOutImplCopyWith<$Res> {
  factory _$$SingOutImplCopyWith(
          _$SingOutImpl value, $Res Function(_$SingOutImpl) then) =
      __$$SingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingOutImplCopyWithImpl<$Res>
    extends _$SingOutEventCopyWithImpl<$Res, _$SingOutImpl>
    implements _$$SingOutImplCopyWith<$Res> {
  __$$SingOutImplCopyWithImpl(
      _$SingOutImpl _value, $Res Function(_$SingOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingOutImpl implements SingOut {
  const _$SingOutImpl();

  @override
  String toString() {
    return 'SingOutEvent.singOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() singOut,
  }) {
    return singOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? singOut,
  }) {
    return singOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? singOut,
    required TResult orElse(),
  }) {
    if (singOut != null) {
      return singOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingOut value) singOut,
  }) {
    return singOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingOut value)? singOut,
  }) {
    return singOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingOut value)? singOut,
    required TResult orElse(),
  }) {
    if (singOut != null) {
      return singOut(this);
    }
    return orElse();
  }
}

abstract class SingOut implements SingOutEvent {
  const factory SingOut() = _$SingOutImpl;
}

/// @nodoc
mixin _$SingOutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingOutInitial value) initial,
    required TResult Function(_SingOutLoading value) loading,
    required TResult Function(_SingOutLoaded value) loaded,
    required TResult Function(_SingOutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingOutInitial value)? initial,
    TResult? Function(_SingOutLoading value)? loading,
    TResult? Function(_SingOutLoaded value)? loaded,
    TResult? Function(_SingOutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingOutInitial value)? initial,
    TResult Function(_SingOutLoading value)? loading,
    TResult Function(_SingOutLoaded value)? loaded,
    TResult Function(_SingOutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingOutStateCopyWith<$Res> {
  factory $SingOutStateCopyWith(
          SingOutState value, $Res Function(SingOutState) then) =
      _$SingOutStateCopyWithImpl<$Res, SingOutState>;
}

/// @nodoc
class _$SingOutStateCopyWithImpl<$Res, $Val extends SingOutState>
    implements $SingOutStateCopyWith<$Res> {
  _$SingOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SingOutInitialImplCopyWith<$Res> {
  factory _$$SingOutInitialImplCopyWith(_$SingOutInitialImpl value,
          $Res Function(_$SingOutInitialImpl) then) =
      __$$SingOutInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingOutInitialImplCopyWithImpl<$Res>
    extends _$SingOutStateCopyWithImpl<$Res, _$SingOutInitialImpl>
    implements _$$SingOutInitialImplCopyWith<$Res> {
  __$$SingOutInitialImplCopyWithImpl(
      _$SingOutInitialImpl _value, $Res Function(_$SingOutInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingOutInitialImpl implements _SingOutInitial {
  const _$SingOutInitialImpl();

  @override
  String toString() {
    return 'SingOutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingOutInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_SingOutInitial value) initial,
    required TResult Function(_SingOutLoading value) loading,
    required TResult Function(_SingOutLoaded value) loaded,
    required TResult Function(_SingOutError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingOutInitial value)? initial,
    TResult? Function(_SingOutLoading value)? loading,
    TResult? Function(_SingOutLoaded value)? loaded,
    TResult? Function(_SingOutError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingOutInitial value)? initial,
    TResult Function(_SingOutLoading value)? loading,
    TResult Function(_SingOutLoaded value)? loaded,
    TResult Function(_SingOutError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SingOutInitial implements SingOutState {
  const factory _SingOutInitial() = _$SingOutInitialImpl;
}

/// @nodoc
abstract class _$$SingOutLoadingImplCopyWith<$Res> {
  factory _$$SingOutLoadingImplCopyWith(_$SingOutLoadingImpl value,
          $Res Function(_$SingOutLoadingImpl) then) =
      __$$SingOutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingOutLoadingImplCopyWithImpl<$Res>
    extends _$SingOutStateCopyWithImpl<$Res, _$SingOutLoadingImpl>
    implements _$$SingOutLoadingImplCopyWith<$Res> {
  __$$SingOutLoadingImplCopyWithImpl(
      _$SingOutLoadingImpl _value, $Res Function(_$SingOutLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingOutLoadingImpl implements _SingOutLoading {
  const _$SingOutLoadingImpl();

  @override
  String toString() {
    return 'SingOutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingOutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_SingOutInitial value) initial,
    required TResult Function(_SingOutLoading value) loading,
    required TResult Function(_SingOutLoaded value) loaded,
    required TResult Function(_SingOutError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingOutInitial value)? initial,
    TResult? Function(_SingOutLoading value)? loading,
    TResult? Function(_SingOutLoaded value)? loaded,
    TResult? Function(_SingOutError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingOutInitial value)? initial,
    TResult Function(_SingOutLoading value)? loading,
    TResult Function(_SingOutLoaded value)? loaded,
    TResult Function(_SingOutError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SingOutLoading implements SingOutState {
  const factory _SingOutLoading() = _$SingOutLoadingImpl;
}

/// @nodoc
abstract class _$$SingOutLoadedImplCopyWith<$Res> {
  factory _$$SingOutLoadedImplCopyWith(
          _$SingOutLoadedImpl value, $Res Function(_$SingOutLoadedImpl) then) =
      __$$SingOutLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingOutLoadedImplCopyWithImpl<$Res>
    extends _$SingOutStateCopyWithImpl<$Res, _$SingOutLoadedImpl>
    implements _$$SingOutLoadedImplCopyWith<$Res> {
  __$$SingOutLoadedImplCopyWithImpl(
      _$SingOutLoadedImpl _value, $Res Function(_$SingOutLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingOutLoadedImpl implements _SingOutLoaded {
  const _$SingOutLoadedImpl();

  @override
  String toString() {
    return 'SingOutState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingOutLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingOutInitial value) initial,
    required TResult Function(_SingOutLoading value) loading,
    required TResult Function(_SingOutLoaded value) loaded,
    required TResult Function(_SingOutError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingOutInitial value)? initial,
    TResult? Function(_SingOutLoading value)? loading,
    TResult? Function(_SingOutLoaded value)? loaded,
    TResult? Function(_SingOutError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingOutInitial value)? initial,
    TResult Function(_SingOutLoading value)? loading,
    TResult Function(_SingOutLoaded value)? loaded,
    TResult Function(_SingOutError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SingOutLoaded implements SingOutState {
  const factory _SingOutLoaded() = _$SingOutLoadedImpl;
}

/// @nodoc
abstract class _$$SingOutErrorImplCopyWith<$Res> {
  factory _$$SingOutErrorImplCopyWith(
          _$SingOutErrorImpl value, $Res Function(_$SingOutErrorImpl) then) =
      __$$SingOutErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SingOutErrorImplCopyWithImpl<$Res>
    extends _$SingOutStateCopyWithImpl<$Res, _$SingOutErrorImpl>
    implements _$$SingOutErrorImplCopyWith<$Res> {
  __$$SingOutErrorImplCopyWithImpl(
      _$SingOutErrorImpl _value, $Res Function(_$SingOutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SingOutErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingOutErrorImpl implements _SingOutError {
  const _$SingOutErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SingOutState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingOutErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingOutErrorImplCopyWith<_$SingOutErrorImpl> get copyWith =>
      __$$SingOutErrorImplCopyWithImpl<_$SingOutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingOutInitial value) initial,
    required TResult Function(_SingOutLoading value) loading,
    required TResult Function(_SingOutLoaded value) loaded,
    required TResult Function(_SingOutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingOutInitial value)? initial,
    TResult? Function(_SingOutLoading value)? loading,
    TResult? Function(_SingOutLoaded value)? loaded,
    TResult? Function(_SingOutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingOutInitial value)? initial,
    TResult Function(_SingOutLoading value)? loading,
    TResult Function(_SingOutLoaded value)? loaded,
    TResult Function(_SingOutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SingOutError implements SingOutState {
  const factory _SingOutError({required final String message}) =
      _$SingOutErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SingOutErrorImplCopyWith<_$SingOutErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
