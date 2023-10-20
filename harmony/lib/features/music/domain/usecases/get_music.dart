import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/music.dart';
import '../repositories/music_repository.dart';

class GetMusic extends UseCase<Music, GetMusicParams> {
  final MusicRepository repository;

  GetMusic(this.repository);

  @override
  Future<Either<Failure, Music>> call(GetMusicParams params) async {
    return await repository.getMusic(params.id);
  }
}

class GetMusicParams extends Equatable{
  final String id;
  const GetMusicParams({required this.id});
  
  @override
  List<Object?> get props => [id];
}
