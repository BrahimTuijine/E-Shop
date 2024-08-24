import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failures.dart';
import '../repositories/authentication_repository.dart';

@lazySingleton
class SingOutUseCase {
  final AuthenticationRepository repository;
  SingOutUseCase(this.repository);

  Future<Either<Failure, Unit>> call() async {
    return await repository.singOut();
  }
}
