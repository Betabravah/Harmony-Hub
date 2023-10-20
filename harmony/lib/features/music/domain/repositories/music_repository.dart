import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/music.dart';

abstract class MusicRepository {
  Future<Either<Failure, List<Music>>> getMusics();
  Future<Either<Failure, Music>> getMusic(String id);
  
  Future<Either<Failure, Music>> cacheMusic(Music music);
  Future<Either<Failure, List<Music>>> cacheMusics(List<Music> musics);

  Future<Either<Failure, void>> addToFavorites(String id);
  Future<Either<Failure, void>> removeFromFavorites(String id);

  Future<Either<Failure, List<Music>>> getFavorites();
}