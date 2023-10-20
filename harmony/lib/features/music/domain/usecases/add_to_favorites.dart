import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/music_repository.dart';

class AddToFavorites extends UseCase<void, AddToFavoritesParams> {
  final MusicRepository repository;

  AddToFavorites(this.repository); 

  @override
  Future<Either<Failure, void>> call(AddToFavoritesParams params) async {
    return await repository.addToFavorites(params.id);
  }
}

class AddToFavoritesParams extends Equatable {
  final String id;

  const AddToFavoritesParams({required this.id});

  @override
  List<Object?> get props => [id];
}
