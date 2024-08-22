import '../../../../core/failures/failures.dart';
import '../../data/models/products_models_export.dart';
import '../../domain/entities/products_entities_export.dart';
import '../repositories/products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProductsUseCase {
  final ProductsRepository repository;
  GetProductsUseCase(this.repository);

  Future<Either<Failure, ProductsModel>> call(ProductsData data) async {
    return await repository.getProducts(data);
  }
}
