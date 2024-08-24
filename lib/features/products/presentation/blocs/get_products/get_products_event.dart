part of 'get_products_bloc.dart';

@freezed
class GetProductsEvent with _$GetProductsEvent {
  const factory GetProductsEvent.getProducts() = GetProducts;
  const factory GetProductsEvent.getMoreProducts() = GetMoreProducts;
  const factory GetProductsEvent.searchProducts({
    required String title,
    required double minPrice,
    required double maxPrice,
  }) = SearchProducts;
}
