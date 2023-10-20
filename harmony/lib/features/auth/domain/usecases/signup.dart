import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/auth_user_info.dart';
import '../entities/signup_entity.dart';
import '../repositories/auth_repository.dart';

class SignUp implements UseCase<AuthenticatedUserInfo, SignUpParams> {
  late final AuthRepository repository;
  @override
  Future<Either<Failure, AuthenticatedUserInfo>> call(SignUpParams params) async {
    return await repository.signUp(params.signUpRequestEntity);
  }
}

class SignUpParams extends Equatable {
  final SignUpEntity signUpRequestEntity;

  const SignUpParams({required this.signUpRequestEntity});

  @override
  List<Object?> get props => [signUpRequestEntity];
}
