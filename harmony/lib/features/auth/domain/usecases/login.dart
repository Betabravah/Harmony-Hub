import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auth_entity.dart';
import '../entities/login_entity.dart';
import '../repositories/auth_repository.dart';

class LogIn implements UseCase<void, LogInParams> {
  late final AuthRepository repository;
  LogIn(AuthRepository repository);

  @override
  Future<Either<Failure, AuthenticatedEntity>> call(LogInParams params) async {
    return await repository.logIn(params.loginRequestEntity);
  }
}

class LogInParams extends Equatable {
  final LoginEntity loginRequestEntity;

  const LogInParams({required this.loginRequestEntity});

  @override
  List<Object?> get props => [loginRequestEntity];
}
