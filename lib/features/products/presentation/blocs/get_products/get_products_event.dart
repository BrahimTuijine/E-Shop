part of 'get_products_bloc.dart';

@freezed
class GetProductsEvent with _$GetProductsEvent {
  const factory GetProductsEvent.getProducts() = GetProducts;
  const factory GetProductsEvent.getMoreProducts() = GetMoreProducts;
}
