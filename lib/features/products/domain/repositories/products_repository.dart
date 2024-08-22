import '../../../../core/failures/failures.dart';
import '../../data/models/products_models_export.dart';
import '../../domain/entities/products_entities_export.dart';
import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';

abstract class ProductsRepository {
  @GET(endPoint: 'products?limit=10&skip=10')
  Future<Either<Failure, ProductsModel>> getProducts(ProductsData data);
}
