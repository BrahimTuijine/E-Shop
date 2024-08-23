part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const factory ShoppingCartEvent.addProduct({required Product product}) =
      AddProduct;
  const factory ShoppingCartEvent.removeProduct({required int id}) =
      RemoveProduct;
}
