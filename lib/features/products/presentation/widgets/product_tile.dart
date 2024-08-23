import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:e_shop/features/products/presentation/blocs/shopping_cart/shopping_cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductListTile extends StatelessWidget {
  final Product product;

  bool isNewProduct(DateTime? createdAt) {
    if (createdAt == null) return false;
    final DateTime currentDate = DateTime.now();
    final Duration difference = currentDate.difference(createdAt);
    return difference.inDays <= 3;
  }

  const ProductListTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
        leading: Image.network(
          product.thumbnail.toString(),
          width: 70,
          height: 50,
          fit: BoxFit.cover,
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
            if (product.rating != null)
              RatingBar.builder(
                ignoreGestures: true,
                itemSize: 20,
                initialRating: product.rating!,
                direction: Axis.horizontal,
                allowHalfRating: true,
    
                itemCount: 5,
                // itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            if (product.meta?.createdAt != null &&
                isNewProduct(product.meta!.createdAt))
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
          ],
        ),
        trailing: IconButton(
          onPressed: () => context
              .read<ShoppingCartBloc>()
              .add(ShoppingCartEvent.addProduct(product: product)),
          icon: const Icon(Icons.add_shopping_cart_rounded),
        ),
        onTap: () {},
      ),
    );
  }
}
