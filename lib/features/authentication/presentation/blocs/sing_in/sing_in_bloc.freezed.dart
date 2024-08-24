// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) singIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? singIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? singIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingIn value) singIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingIn value)? singIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingIn value)? singIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingInEventCopyWith<SingInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInEventCopyWith<$Res> {
  factory $SingInEventCopyWith(
          SingInEvent value, $Res Function(SingInEvent) then) =
      _$SingInEventCopyWithImpl<$Res, SingInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SingInEventCopyWithImpl<$Res, $Val extends SingInEvent>
    implements $SingInEventCopyWith<$Res> {
  _$SingInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingInImplCopyWith<$Res>
    implements $SingInEventCopyWith<$Res> {
  factory _$$SingInImplCopyWith(
          _$SingInImpl value, $Res Function(_$SingInImpl) then) =
      __$$SingInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SingInImplCopyWithImpl<$Res>
    extends _$SingInEventCopyWithImpl<$Res, _$SingInImpl>
    implements _$$SingInImplCopyWith<$Res> {
  __$$SingInImplCopyWithImpl(
      _$SingInImpl _value, $Res Function(_$SingInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SingInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingInImpl implements SingIn {
  const _$SingInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SingInEvent.singIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingInImplCopyWith<_$SingInImpl> get copyWith =>
      __$$SingInImplCopyWithImpl<_$SingInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) singIn,
  }) {
    return singIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? singIn,
  }) {
    return singIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? singIn,
    required TResult orElse(),
  }) {
    if (singIn != null) {
      return singIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingIn value) singIn,
  }) {
    return singIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingIn value)? singIn,
  }) {
    return singIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingIn value)? singIn,
    required TResult orElse(),
  }) {
    if (singIn != null) {
      return singIn(this);
    }
    return orElse();
  }
}

abstract class SingIn implements SingInEvent {
  const factory SingIn(
      {required final String email,
      required final String password}) = _$SingInImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SingInImplCopyWith<_$SingInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUserModel result) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUserModel result)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUserModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingInInitial value) initial,
    required TResult Function(_SingInLoading value) loading,
    required TResult Function(_SingInLoaded value) loaded,
    required TResult Function(_SingInError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingInInitial value)? initial,
    TResult? Function(_SingInLoading value)? loading,
    TResult? Function(_SingInLoaded value)? loaded,
    TResult? Function(_SingInError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingInInitial value)? initial,
    TResult Function(_SingInLoading value)? loading,
    TResult Function(_SingInLoaded value)? loaded,
    TResult Function(_SingInError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInStateCopyWith<$Res> {
  factory $SingInStateCopyWith(
          SingInState value, $Res Function(SingInState) then) =
      _$SingInStateCopyWithImpl<$Res, SingInState>;
}

/// @nodoc
class _$SingInStateCopyWithImpl<$Res, $Val extends SingInState>
    implements $SingInStateCopyWith<$Res> {
  _$SingInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SingInInitialImplCopyWith<$Res> {
  factory _$$SingInInitialImplCopyWith(
          _$SingInInitialImpl value, $Res Function(_$SingInInitialImpl) then) =
      __$$SingInInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingInInitialImplCopyWithImpl<$Res>
    extends _$SingInStateCopyWithImpl<$Res, _$SingInInitialImpl>
    implements _$$SingInInitialImplCopyWith<$Res> {
  __$$SingInInitialImplCopyWithImpl(
      _$SingInInitialImpl _value, $Res Function(_$SingInInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingInInitialImpl implements _SingInInitial {
  const _$SingInInitialImpl();

  @override
  String toString() {
    return 'SingInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingInInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUserModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUserModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUserModel result)? loaded,
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
    required TResult Function(_SingInInitial value) initial,
    required TResult Function(_SingInLoading value) loading,
    required TResult Function(_SingInLoaded value) loaded,
    required TResult Function(_SingInError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingInInitial value)? initial,
    TResult? Function(_SingInLoading value)? loading,
    TResult? Function(_SingInLoaded value)? loaded,
    TResult? Function(_SingInError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingInInitial value)? initial,
    TResult Function(_SingInLoading value)? loading,
    TResult Function(_SingInLoaded value)? loaded,
    TResult Function(_SingInError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SingInInitial implements SingInState {
  const factory _SingInInitial() = _$SingInInitialImpl;
}

/// @nodoc
abstract class _$$SingInLoadingImplCopyWith<$Res> {
  factory _$$SingInLoadingImplCopyWith(
          _$SingInLoadingImpl value, $Res Function(_$SingInLoadingImpl) then) =
      __$$SingInLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingInLoadingImplCopyWithImpl<$Res>
    extends _$SingInStateCopyWithImpl<$Res, _$SingInLoadingImpl>
    implements _$$SingInLoadingImplCopyWith<$Res> {
  __$$SingInLoadingImplCopyWithImpl(
      _$SingInLoadingImpl _value, $Res Function(_$SingInLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingInLoadingImpl implements _SingInLoading {
  const _$SingInLoadingImpl();

  @override
  String toString() {
    return 'SingInState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingInLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUserModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUserModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUserModel result)? loaded,
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
    required TResult Function(_SingInInitial value) initial,
    required TResult Function(_SingInLoading value) loading,
    required TResult Function(_SingInLoaded value) loaded,
    required TResult Function(_SingInError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingInInitial value)? initial,
    TResult? Function(_SingInLoading value)? loading,
    TResult? Function(_SingInLoaded value)? loaded,
    TResult? Function(_SingInError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingInInitial value)? initial,
    TResult Function(_SingInLoading value)? loading,
    TResult Function(_SingInLoaded value)? loaded,
    TResult Function(_SingInError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SingInLoading implements SingInState {
  const factory _SingInLoading() = _$SingInLoadingImpl;
}

/// @nodoc
abstract class _$$SingInLoadedImplCopyWith<$Res> {
  factory _$$SingInLoadedImplCopyWith(
          _$SingInLoadedImpl value, $Res Function(_$SingInLoadedImpl) then) =
      __$$SingInLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthUserModel result});
}

/// @nodoc
class __$$SingInLoadedImplCopyWithImpl<$Res>
    extends _$SingInStateCopyWithImpl<$Res, _$SingInLoadedImpl>
    implements _$$SingInLoadedImplCopyWith<$Res> {
  __$$SingInLoadedImplCopyWithImpl(
      _$SingInLoadedImpl _value, $Res Function(_$SingInLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SingInLoadedImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
    ));
  }
}

/// @nodoc

class _$SingInLoadedImpl implements _SingInLoaded {
  const _$SingInLoadedImpl({required this.result});

  @override
  final AuthUserModel result;

  @override
  String toString() {
    return 'SingInState.loaded(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingInLoadedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingInLoadedImplCopyWith<_$SingInLoadedImpl> get copyWith =>
      __$$SingInLoadedImplCopyWithImpl<_$SingInLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUserModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUserModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUserModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SingInInitial value) initial,
    required TResult Function(_SingInLoading value) loading,
    required TResult Function(_SingInLoaded value) loaded,
    required TResult Function(_SingInError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingInInitial value)? initial,
    TResult? Function(_SingInLoading value)? loading,
    TResult? Function(_SingInLoaded value)? loaded,
    TResult? Function(_SingInError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingInInitial value)? initial,
    TResult Function(_SingInLoading value)? loading,
    TResult Function(_SingInLoaded value)? loaded,
    TResult Function(_SingInError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SingInLoaded implements SingInState {
  const factory _SingInLoaded({required final AuthUserModel result}) =
      _$SingInLoadedImpl;

  AuthUserModel get result;
  @JsonKey(ignore: true)
  _$$SingInLoadedImplCopyWith<_$SingInLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingInErrorImplCopyWith<$Res> {
  factory _$$SingInErrorImplCopyWith(
          _$SingInErrorImpl value, $Res Function(_$SingInErrorImpl) then) =
      __$$SingInErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SingInErrorImplCopyWithImpl<$Res>
    extends _$SingInStateCopyWithImpl<$Res, _$SingInErrorImpl>
    implements _$$SingInErrorImplCopyWith<$Res> {
  __$$SingInErrorImplCopyWithImpl(
      _$SingInErrorImpl _value, $Res Function(_$SingInErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SingInErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingInErrorImpl implements _SingInError {
  const _$SingInErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SingInState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingInErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingInErrorImplCopyWith<_$SingInErrorImpl> get copyWith =>
      __$$SingInErrorImplCopyWithImpl<_$SingInErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUserModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUserModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUserModel result)? loaded,
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
    required TResult Function(_SingInInitial value) initial,
    required TResult Function(_SingInLoading value) loading,
    required TResult Function(_SingInLoaded value) loaded,
    required TResult Function(_SingInError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SingInInitial value)? initial,
    TResult? Function(_SingInLoading value)? loading,
    TResult? Function(_SingInLoaded value)? loaded,
    TResult? Function(_SingInError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SingInInitial value)? initial,
    TResult Function(_SingInLoading value)? loading,
    TResult Function(_SingInLoaded value)? loaded,
    TResult Function(_SingInError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SingInError implements SingInState {
  const factory _SingInError({required final String message}) =
      _$SingInErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SingInErrorImplCopyWith<_$SingInErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
