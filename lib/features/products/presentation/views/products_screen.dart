import 'package:e_shop/core/extensions/extensions.dart';
import 'package:e_shop/features/products/presentation/blocs/get_products/get_products_bloc.dart';
import 'package:e_shop/features/products/presentation/widgets/product_factory.dart';
import 'package:e_shop/features/products/presentation/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final ScrollController controller = ScrollController();

  void onScroll() {
    double maxScroll = controller.position.maxScrollExtent;
    double currentScroll = controller.position.pixels;

    if (maxScroll == currentScroll) {
      context
          .read<GetProductsBloc>()
          .add(const GetProductsEvent.getMoreProducts());
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(onScroll);
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<GetProductsBloc, GetProductsState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (products, hasReachedMax) => products.isEmpty
              ? const Text("no products")
              : ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  controller: controller,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount:
                      (hasReachedMax) ? products.length : products.length + 1,
                  separatorBuilder: (context, index) => 10.bh,
                  itemBuilder: (BuildContext context, int index) =>
                      index < products.length
                          ? ProductFactory(products[index].discountPercentage)
                              .build(products[index])
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                ),
          error: (message) => Center(
            child: Text(message),
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
