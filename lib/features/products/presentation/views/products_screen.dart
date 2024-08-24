import 'package:badges/badges.dart' as badges;
import 'package:e_shop/core/extensions/extensions.dart';
import 'package:e_shop/features/products/presentation/blocs/get_products/get_products_bloc.dart';
import 'package:e_shop/features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart';
import 'package:e_shop/features/products/presentation/widgets/product_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'E-shop',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: HookBuilder(builder: (context) {
          final isNotifEnable = useState<bool>(false);
          return Transform.scale(
            scale: .7,
            child: Switch(
              value: isNotifEnable.value,
              onChanged: (value) {
                isNotifEnable.value = value;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 1),
                    content: Text(
                      textAlign: TextAlign.center,
                      !value
                          ? 'notification disabled'
                          : 'notification enabled , you will recieve a notif every 10 seconds',
                    ),
                  ),
                );
              },
            ),
          );
        }),
        actions: [
          BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
            builder: (context, state) => state.when(
              data: (products) => badges.Badge(
                position: badges.BadgePosition.topEnd(top: -3, end: 4),
                showBadge: products.isNotEmpty,
                badgeContent: Text(
                  products.length.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: IconButton(
                  color: Colors.black,
                  onPressed: () => context.pushNamed('CartScreen'),
                  icon: const Icon(Icons.shopping_cart),
                ),
              ),
            ),
          ),
        ],
      ),
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
                          ? ProductFactory(products[index].price)
                              .build(product: products[index])
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
