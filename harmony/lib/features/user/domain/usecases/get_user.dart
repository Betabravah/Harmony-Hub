import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class getUser implements Usecase<User, GetParams> {
  final UserRepository repository;

  getUser(this.repository);

  @override
  Future<Either<Failure, User>> call(GetParams params) async {
    return await repository.getUser(params.token);
  }
}

class GetParams extends Equatable{
  final String token;
  GetParams({required this.token});
  
  @override
  List<Object?> get props => [id];
}