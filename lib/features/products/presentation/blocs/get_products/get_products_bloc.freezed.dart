// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getMoreProducts,
    required TResult Function(String title, double minPrice, double maxPrice)
        searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function()? getMoreProducts,
    TResult? Function(String title, double minPrice, double maxPrice)?
        searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getMoreProducts,
    TResult Function(String title, double minPrice, double maxPrice)?
        searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetMoreProducts value) getMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetMoreProducts value)? getMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetMoreProducts value)? getMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsEventCopyWith<$Res> {
  factory $GetProductsEventCopyWith(
          GetProductsEvent value, $Res Function(GetProductsEvent) then) =
      _$GetProductsEventCopyWithImpl<$Res, GetProductsEvent>;
}

/// @nodoc
class _$GetProductsEventCopyWithImpl<$Res, $Val extends GetProductsEvent>
    implements $GetProductsEventCopyWith<$Res> {
  _$GetProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$GetProductsEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsImpl implements GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'GetProductsEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getMoreProducts,
    required TResult Function(String title, double minPrice, double maxPrice)
        searchProducts,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function()? getMoreProducts,
    TResult? Function(String title, double minPrice, double maxPrice)?
        searchProducts,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getMoreProducts,
    TResult Function(String title, double minPrice, double maxPrice)?
        searchProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetMoreProducts value) getMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetMoreProducts value)? getMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetMoreProducts value)? getMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements GetProductsEvent {
  const factory GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$GetMoreProductsImplCopyWith<$Res> {
  factory _$$GetMoreProductsImplCopyWith(_$GetMoreProductsImpl value,
          $Res Function(_$GetMoreProductsImpl) then) =
      __$$GetMoreProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoreProductsImplCopyWithImpl<$Res>
    extends _$GetProductsEventCopyWithImpl<$Res, _$GetMoreProductsImpl>
    implements _$$GetMoreProductsImplCopyWith<$Res> {
  __$$GetMoreProductsImplCopyWithImpl(
      _$GetMoreProductsImpl _value, $Res Function(_$GetMoreProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMoreProductsImpl implements GetMoreProducts {
  const _$GetMoreProductsImpl();

  @override
  String toString() {
    return 'GetProductsEvent.getMoreProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMoreProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getMoreProducts,
    required TResult Function(String title, double minPrice, double maxPrice)
        searchProducts,
  }) {
    return getMoreProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function()? getMoreProducts,
    TResult? Function(String title, double minPrice, double maxPrice)?
        searchProducts,
  }) {
    return getMoreProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getMoreProducts,
    TResult Function(String title, double minPrice, double maxPrice)?
        searchProducts,
    required TResult orElse(),
  }) {
    if (getMoreProducts != null) {
      return getMoreProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetMoreProducts value) getMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return getMoreProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetMoreProducts value)? getMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
  }) {
    return getMoreProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetMoreProducts value)? getMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (getMoreProducts != null) {
      return getMoreProducts(this);
    }
    return orElse();
  }
}

abstract class GetMoreProducts implements GetProductsEvent {
  const factory GetMoreProducts() = _$GetMoreProductsImpl;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(_$SearchProductsImpl value,
          $Res Function(_$SearchProductsImpl) then) =
      __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, double minPrice, double maxPrice});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$GetProductsEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
      _$SearchProductsImpl _value, $Res Function(_$SearchProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? minPrice = null,
    Object? maxPrice = null,
  }) {
    return _then(_$SearchProductsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SearchProductsImpl implements SearchProducts {
  const _$SearchProductsImpl(
      {required this.title, required this.minPrice, required this.maxPrice});

  @override
  final String title;
  @override
  final double minPrice;
  @override
  final double maxPrice;

  @override
  String toString() {
    return 'GetProductsEvent.searchProducts(title: $title, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getMoreProducts,
    required TResult Function(String title, double minPrice, double maxPrice)
        searchProducts,
  }) {
    return searchProducts(title, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function()? getMoreProducts,
    TResult? Function(String title, double minPrice, double maxPrice)?
        searchProducts,
  }) {
    return searchProducts?.call(title, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getMoreProducts,
    TResult Function(String title, double minPrice, double maxPrice)?
        searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(title, minPrice, maxPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetMoreProducts value) getMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetMoreProducts value)? getMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetMoreProducts value)? getMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class SearchProducts implements GetProductsEvent {
  const factory SearchProducts(
      {required final String title,
      required final double minPrice,
      required final double maxPrice}) = _$SearchProductsImpl;

  String get title;
  double get minPrice;
  double get maxPrice;
  @JsonKey(ignore: true)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products, bool hasReachedMax)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsInitial value) initial,
    required TResult Function(_GetProductsLoading value) loading,
    required TResult Function(_GetProductsLoaded value) loaded,
    required TResult Function(_GetProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsInitial value)? initial,
    TResult? Function(_GetProductsLoading value)? loading,
    TResult? Function(_GetProductsLoaded value)? loaded,
    TResult? Function(_GetProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsInitial value)? initial,
    TResult Function(_GetProductsLoading value)? loading,
    TResult Function(_GetProductsLoaded value)? loaded,
    TResult Function(_GetProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsStateCopyWith<$Res> {
  factory $GetProductsStateCopyWith(
          GetProductsState value, $Res Function(GetProductsState) then) =
      _$GetProductsStateCopyWithImpl<$Res, GetProductsState>;
}

/// @nodoc
class _$GetProductsStateCopyWithImpl<$Res, $Val extends GetProductsState>
    implements $GetProductsStateCopyWith<$Res> {
  _$GetProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsInitialImplCopyWith<$Res> {
  factory _$$GetProductsInitialImplCopyWith(_$GetProductsInitialImpl value,
          $Res Function(_$GetProductsInitialImpl) then) =
      __$$GetProductsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsInitialImplCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res, _$GetProductsInitialImpl>
    implements _$$GetProductsInitialImplCopyWith<$Res> {
  __$$GetProductsInitialImplCopyWithImpl(_$GetProductsInitialImpl _value,
      $Res Function(_$GetProductsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsInitialImpl implements _GetProductsInitial {
  const _$GetProductsInitialImpl();

  @override
  String toString() {
    return 'GetProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products, bool hasReachedMax)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products, bool hasReachedMax)? loaded,
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
    required TResult Function(_GetProductsInitial value) initial,
    required TResult Function(_GetProductsLoading value) loading,
    required TResult Function(_GetProductsLoaded value) loaded,
    required TResult Function(_GetProductsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsInitial value)? initial,
    TResult? Function(_GetProductsLoading value)? loading,
    TResult? Function(_GetProductsLoaded value)? loaded,
    TResult? Function(_GetProductsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsInitial value)? initial,
    TResult Function(_GetProductsLoading value)? loading,
    TResult Function(_GetProductsLoaded value)? loaded,
    TResult Function(_GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProductsInitial implements GetProductsState {
  const factory _GetProductsInitial() = _$GetProductsInitialImpl;
}

/// @nodoc
abstract class _$$GetProductsLoadingImplCopyWith<$Res> {
  factory _$$GetProductsLoadingImplCopyWith(_$GetProductsLoadingImpl value,
          $Res Function(_$GetProductsLoadingImpl) then) =
      __$$GetProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsLoadingImplCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res, _$GetProductsLoadingImpl>
    implements _$$GetProductsLoadingImplCopyWith<$Res> {
  __$$GetProductsLoadingImplCopyWithImpl(_$GetProductsLoadingImpl _value,
      $Res Function(_$GetProductsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsLoadingImpl implements _GetProductsLoading {
  const _$GetProductsLoadingImpl();

  @override
  String toString() {
    return 'GetProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products, bool hasReachedMax)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products, bool hasReachedMax)? loaded,
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
    required TResult Function(_GetProductsInitial value) initial,
    required TResult Function(_GetProductsLoading value) loading,
    required TResult Function(_GetProductsLoaded value) loaded,
    required TResult Function(_GetProductsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsInitial value)? initial,
    TResult? Function(_GetProductsLoading value)? loading,
    TResult? Function(_GetProductsLoaded value)? loaded,
    TResult? Function(_GetProductsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsInitial value)? initial,
    TResult Function(_GetProductsLoading value)? loading,
    TResult Function(_GetProductsLoaded value)? loaded,
    TResult Function(_GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetProductsLoading implements GetProductsState {
  const factory _GetProductsLoading() = _$GetProductsLoadingImpl;
}

/// @nodoc
abstract class _$$GetProductsLoadedImplCopyWith<$Res> {
  factory _$$GetProductsLoadedImplCopyWith(_$GetProductsLoadedImpl value,
          $Res Function(_$GetProductsLoadedImpl) then) =
      __$$GetProductsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products, bool hasReachedMax});
}

/// @nodoc
class __$$GetProductsLoadedImplCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res, _$GetProductsLoadedImpl>
    implements _$$GetProductsLoadedImplCopyWith<$Res> {
  __$$GetProductsLoadedImplCopyWithImpl(_$GetProductsLoadedImpl _value,
      $Res Function(_$GetProductsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$GetProductsLoadedImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetProductsLoadedImpl implements _GetProductsLoaded {
  const _$GetProductsLoadedImpl(
      {required final List<Product> products, required this.hasReachedMax})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'GetProductsState.loaded(products: $products, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsLoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsLoadedImplCopyWith<_$GetProductsLoadedImpl> get copyWith =>
      __$$GetProductsLoadedImplCopyWithImpl<_$GetProductsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products, bool hasReachedMax)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(products, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsInitial value) initial,
    required TResult Function(_GetProductsLoading value) loading,
    required TResult Function(_GetProductsLoaded value) loaded,
    required TResult Function(_GetProductsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsInitial value)? initial,
    TResult? Function(_GetProductsLoading value)? loading,
    TResult? Function(_GetProductsLoaded value)? loaded,
    TResult? Function(_GetProductsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsInitial value)? initial,
    TResult Function(_GetProductsLoading value)? loading,
    TResult Function(_GetProductsLoaded value)? loaded,
    TResult Function(_GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GetProductsLoaded implements GetProductsState {
  const factory _GetProductsLoaded(
      {required final List<Product> products,
      required final bool hasReachedMax}) = _$GetProductsLoadedImpl;

  List<Product> get products;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$GetProductsLoadedImplCopyWith<_$GetProductsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsErrorImplCopyWith<$Res> {
  factory _$$GetProductsErrorImplCopyWith(_$GetProductsErrorImpl value,
          $Res Function(_$GetProductsErrorImpl) then) =
      __$$GetProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetProductsErrorImplCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res, _$GetProductsErrorImpl>
    implements _$$GetProductsErrorImplCopyWith<$Res> {
  __$$GetProductsErrorImplCopyWithImpl(_$GetProductsErrorImpl _value,
      $Res Function(_$GetProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetProductsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductsErrorImpl implements _GetProductsError {
  const _$GetProductsErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GetProductsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith =>
      __$$GetProductsErrorImplCopyWithImpl<_$GetProductsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products, bool hasReachedMax)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products, bool hasReachedMax)? loaded,
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
    required TResult Function(_GetProductsInitial value) initial,
    required TResult Function(_GetProductsLoading value) loading,
    required TResult Function(_GetProductsLoaded value) loaded,
    required TResult Function(_GetProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsInitial value)? initial,
    TResult? Function(_GetProductsLoading value)? loading,
    TResult? Function(_GetProductsLoaded value)? loaded,
    TResult? Function(_GetProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsInitial value)? initial,
    TResult Function(_GetProductsLoading value)? loading,
    TResult Function(_GetProductsLoaded value)? loaded,
    TResult Function(_GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GetProductsError implements GetProductsState {
  const factory _GetProductsError({required final String message}) =
      _$GetProductsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
