import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/network/network.dart';
import '../../../../core/failures/failures.dart';
import '../../data/models/products_models_export.dart';
import '../../domain/entities/products_entities_export.dart';
import '../../domain/repositories/products_repository.dart';
import '../datasources/products_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsDataSource dataSource;

  final NetworkInfo networkInfo;

  ProductsRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, ProductsModel>> getProducts(ProductsData data) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.getProducts(data);
        return Right(result);
      } on ServerException catch (error) {
        return Left(ServerFailure(msg: error.msg));
      } catch (error) {
        return Left(UnexpedtedFailure(msg: error.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
