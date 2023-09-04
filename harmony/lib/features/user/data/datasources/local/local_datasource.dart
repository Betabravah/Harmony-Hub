import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../models/user_model.dart';

abstract class UserLocalDatasource {
  Future<Either<Failure, UserModel>> getUser(String id);
  Future<Either<Failure, UserModel>> updateUser(UserModel user);
  Future<void> cacheUser(UserModel user);
}