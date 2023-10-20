import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class UpdateUser implements UseCase<User, UpdateParams> {
  final UserRepository repository;

  UpdateUser(this.repository);

  @override
  Future<Either<Failure, User>> call(UpdateParams params) async {
    return await repository.updateUser(params.user);
  }
}

class UpdateParams extends Equatable{
  final User user;
  const UpdateParams({required this.user});
  
  @override
  List<Object?> get props => [user];
}
