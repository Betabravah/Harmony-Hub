import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_entity.dart';
import '../entities/auth_user_info.dart';
import '../entities/login_entity.dart';
import '../entities/signup_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthenticatedUserInfo>> signUp(
      SignUpEntity signUpRequestEntity);
  Future<Either<Failure, AuthenticatedEntity>> logIn(
      LoginEntity loginRequestEntity);
}
