import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';

import '../../../../core/failures/failures.dart';
import '../../data/models/authentication_models_export.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, AuthUserModel>> singIn(String email, String password);
  Future<Either<Failure, AuthUserModel>> signUp(String email, String password);
  Future<Either<Failure, Unit>> singOut();
}
