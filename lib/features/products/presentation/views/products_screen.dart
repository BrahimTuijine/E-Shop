import 'dart:async';

import 'package:badges/badges.dart' as badges;
import 'package:e_shop/core/extensions/extensions.dart';
import 'package:e_shop/core/local_notification/notification.dart';
import 'package:e_shop/features/authentication/presentation/blocs/sing_out/sing_out_bloc.dart';
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
  final TextEditingController searchController = TextEditingController();
  Timer? _checkTypingTimer;

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
    searchController.dispose();
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
        leading: BlocConsumer<SingOutBloc, SingOutState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              ),
              loaded: () => context.pushReplacement('/auth'),
            );
          },
          builder: (context, state) => state.maybeWhen(
            loading: () => const CircularProgressIndicator(),
            orElse: () => IconButton(
              onPressed: () {
                BlocProvider.of<SingOutBloc>(context)
                    .add(const SingOutEvent.singOut());
              },
              icon: const Icon(Icons.logout),
            ),
          ),
        ),
        actions: [
          HookBuilder(builder: (context) {
            final isNotifEnable = useState<bool>(false);
            return Transform.scale(
              scale: .7,
              child: Switch(
                value: isNotifEnable.value,
                onChanged: (value) async {
                  isNotifEnable.value = value;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text(
                        textAlign: TextAlign.center,
                        'you will recieve a notif after 5 seconds',
                      ),
                    ),
                  );
                  await NotificationService.showNotification(
                    title: "Scheduled Notification",
                    body:
                        "notification ${value ? 'enabled' : 'disabled'} Notification was fired after 5 seconds",
                    interval: 5,
                    scheduled: true,
                  );
                },
              ),
            );
          }),
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
          5.bw,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            HookBuilder(builder: (context) {
              final minPrice = useState(0.0);
              final maxPrice = useState(1000.0);
              return Column(
                children: [
                  TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      _checkTypingTimer?.cancel();
                      _checkTypingTimer =
                          Timer(const Duration(milliseconds: 600), () {
                        context.read<GetProductsBloc>().add(
                              GetProductsEvent.searchProducts(
                                  title: value,
                                  minPrice: minPrice.value,
                                  maxPrice: maxPrice.value),
                            );
                      });
                    },
                  ),
                  16.bh,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Price: '),
                      Expanded(
                          child: RangeSlider(
                        values: RangeValues(minPrice.value, maxPrice.value),
                        min: 0,
                        max: 1000,
                        divisions: 100,
                        labels: RangeLabels(
                          minPrice.value.toStringAsFixed(2),
                          maxPrice.value.toStringAsFixed(2),
                        ),
                        onChangeEnd: (value) =>
                            context.read<GetProductsBloc>().add(
                                  GetProductsEvent.searchProducts(
                                    title: searchController.text,
                                    minPrice: minPrice.value,
                                    maxPrice: maxPrice.value,
                                  ),
                                ),
                        onChanged: (RangeValues values) {
                          minPrice.value = values.start;
                          maxPrice.value = values.end;
                        },
                      )),
                    ],
                  ),
                ],
              );
            }),
            Expanded(
              child: BlocBuilder<GetProductsBloc, GetProductsState>(
                builder: (context, state) => state.maybeWhen(
                  loaded: (products, hasReachedMax) => products.isEmpty
                      ? const Center(child: Text("no products"))
                      : ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          controller: controller,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: (hasReachedMax)
                              ? products.length
                              : products.length + 1,
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
            ),
          ],
        ),
      ),
    );
  }
}
