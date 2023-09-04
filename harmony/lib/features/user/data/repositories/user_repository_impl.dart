import '../../../../core/error/failures.dart';
import '../../domain/entities/user.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/user_repository.dart';
import '../datasources/local/local_datasource.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  late final UserLocalDatasource localDatasource;

  @override
  Future<Either<Failure, User>> getUser(String id) async {
    try {
      final user = await localDatasource.getUser(id);
      return Right(user);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(User user) async {
    try {
      final updatedUser = await localDatasource.updateUser(user as UserModel);
      return Right(updatedUser);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
