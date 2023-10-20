import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/music_repository.dart';

class RemoveFromFavorites extends UseCase<void, RemoveFromFavoritesParams> {
  final MusicRepository repository;

  RemoveFromFavorites(this.repository);

  @override
  Future<Either<Failure, void>> call(RemoveFromFavoritesParams params) async {
    return await repository.removeFromFavorites(params.id);
  }
}

class RemoveFromFavoritesParams extends Equatable {
  final String id;

  const RemoveFromFavoritesParams({required this.id});
  
  @override
  List<Object?> get props => [id];
}
