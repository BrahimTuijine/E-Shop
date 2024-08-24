import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/failures/failures.dart';
import '../../../../core/network/network.dart';
import '../../data/models/authentication_models_export.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/authentication_data_source.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;

  final NetworkInfo networkInfo;

  AuthenticationRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, AuthUserModel>> singIn(
      String email, String password) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.singIn(email, password);
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

  @override
  Future<Either<Failure, AuthUserModel>> signUp(
      String email, String password) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.signUp(email, password);
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

  @override
  Future<Either<Failure, Unit>> singOut() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.singOut();
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
