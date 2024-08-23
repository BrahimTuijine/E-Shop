import 'package:e_shop/core/extensions/extensions.dart';
import 'package:e_shop/features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart';
import 'package:e_shop/features/products/presentation/widgets/product_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartScreen'),
      ),
      body: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) => state.when(
          data: (products) => products.isEmpty
              ? const Text("no products")
              : ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: products.length,
                  separatorBuilder: (context, index) => 10.bh,
                  itemBuilder: (BuildContext context, int index) =>
                      ProductFactory(products[index].price)
                          .build(products[index]),
                ),
        ),
      ),
    );
  }
}
