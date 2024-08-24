import 'package:e_shop/core/extensions/extensions.dart';
import 'package:e_shop/core/widgets/rating_bar.dart';
import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('product details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.id,
                child: Image.network(
                  product.thumbnail.toString(),
                  width: size.width,
                  height: size.height * .35,
                  fit: BoxFit.contain,
                ),
              ),
              16.bh,
              Text(
                product.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              8.bh,
              if (product.price != null)
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              16.bh,
              if (product.description != null)
                Text(
                  product.description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              16.bh,
              // Stock Information
              Text(
                'Stock: ${product.stock}',
                style: TextStyle(
                  color: product.stock! > 0 ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              8.bh,
              Text('SKU: ${product.sku}'),
              16.bh,
              // Warranty and Shipping
              Text('Warranty: ${product.warrantyInformation}'),
              8.bh,
              Text('Shipping: ${product.shippingInformation}'),
              16.bh,
              // Tags
              Wrap(
                  spacing: 8.0,
                  children: List.generate(product.tags?.length ?? 0,
                      (index) => Chip(label: Text(product.tags![index])))),
              16.bh,
              // Reviews

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemCount: product.reviews?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final review = product.reviews![index];
                  return ListTile(
                    title: Text(review.reviewerName.toString()),
                    subtitle: Text(review.comment.toString()),
                    trailing: CustomRatingBar(product: product),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
