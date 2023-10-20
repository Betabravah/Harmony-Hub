import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/music.dart';
import '../repositories/music_repository.dart';

class GetMusics implements UseCase<List<Music>, NoParams> {
  final MusicRepository repository;

  GetMusics(this.repository);

  @override
  Future<Either<Failure, List<Music>>> call(NoParams params) async {
    return await repository.getMusics();
  }
}