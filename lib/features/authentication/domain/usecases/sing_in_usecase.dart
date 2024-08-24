import '../../../../core/failures/failures.dart';
import '../../data/models/authentication_models_export.dart';
import '../repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SingInUseCase {
  final AuthenticationRepository repository;
  SingInUseCase(this.repository);

  Future<Either<Failure, AuthUserModel>> call(
      String email, String password) async {
    return await repository.singIn(email, password);
  }
}
