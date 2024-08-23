import 'package:e_shop/features/products/data/models/products_models_export.dart';
import 'package:e_shop/features/products/presentation/widgets/product_tile.dart';
import 'package:flutter/widgets.dart';


abstract class ProductFactory {
  Widget build(Product product);

  factory ProductFactory(double? discount) => switch (discount) {
        != null && < 50 => ProdcutWithBanner(),
        _ => ProdcutWithoutBanner(),
      };
}

class ProdcutWithBanner implements ProductFactory {
  @override
  Widget build(Product product) => Banner(
        location: BannerLocation.topStart,
        message: '-${product.discountPercentage!.toStringAsFixed(2)}%',
        child: ProductListTile(
          product: product,
        ),
      );
}

class ProdcutWithoutBanner implements ProductFactory {
  @override
  Widget build(Product product) => Banner(
        location: BannerLocation.topStart,
        message: '-${product.discountPercentage!.toStringAsFixed(2)}%',
        child: ProductListTile(
          product: product,
        ),
      );
}
