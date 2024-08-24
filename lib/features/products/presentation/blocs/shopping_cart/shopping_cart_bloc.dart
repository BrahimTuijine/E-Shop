import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shopping_cart_bloc.freezed.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

@injectable
class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(const _Data(products: [])) {
    on<ShoppingCartEvent>((event, emit) {
      event.when(
        addProduct: (product) {
          emit(ShoppingCartState.data(products: [product, ...state.products]));
        },
        removeProduct: (id) {
          List<Product> productList = [...state.products];
          productList.removeWhere((product) => product.id == id);
          emit(ShoppingCartState.data(products: productList));
        },
      );
    });
  }
}
