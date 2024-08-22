part of 'get_products_bloc.dart';

@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _GetProductsInitial;
  const factory GetProductsState.loading() = _GetProductsLoading;
  const factory GetProductsState.loaded({required ProductsModel result}) =
      _GetProductsLoaded;
  const factory GetProductsState.error({required String message}) =
      _GetProductsError;
}
