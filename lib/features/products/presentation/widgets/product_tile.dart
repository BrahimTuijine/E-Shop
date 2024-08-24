import 'package:e_shop/core/widgets/rating_bar.dart';
import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:e_shop/features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  final bool? isFromSearch;

  const ProductListTile({super.key, required this.product, this.isFromSearch});

  bool isNewProduct(DateTime createdAt) {
    final DateTime currentDate = DateTime.now();
    final Duration difference = currentDate.difference(createdAt);
    return difference.inDays <= 3;
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: isFromSearch == null
          ? DismissDirection.none
          : DismissDirection.horizontal,
      key: ValueKey<int>(product.id),
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.only(right: 15),
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 35,
        ),
      ),
      onDismissed: (direction) => context
          .read<ShoppingCartBloc>()
          .add(ShoppingCartEvent.removeProduct(id: product.id)),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x28D4D4D4),
              blurRadius: 40,
              offset: Offset(0, 20),
              spreadRadius: 0,
            )
          ],
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          //TODO change it to cachedNetworkImage
          leading: Hero(
            tag: product.id,
            child: Image.network(
              product.thumbnail.toString(),
              width: 70,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          title: product.title != null
              ? Text(
                  product.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (product.price != null) Text('Price: \$${product.price}'),
              if (product.stock != null) Text('Stock: ${product.stock}'),
              if (product.rating != null) CustomRatingBar(product: product),
              if (product.meta?.createdAt != null &&
                  isNewProduct(product.meta!.createdAt!))
                const Text(
                  'Nouveau',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (product.price != null && product.price! < 10)
                const Text(
                  'Vente Flash!',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (isFromSearch == false)
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'swipe left to delete <-',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
            ],
          ),
          trailing: isFromSearch == null || isFromSearch!
              ? IconButton(
                  onPressed: () => context
                      .read<ShoppingCartBloc>()
                      .add(ShoppingCartEvent.addProduct(product: product)),
                  icon: const Icon(Icons.add_shopping_cart_rounded),
                )
              : null,
          onTap: () =>
              context.pushNamed('ProductDetailsScreen', extra: product),
        ),
      ),
    );
  }
}
