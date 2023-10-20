import '../../models/music_model.dart';

abstract class MusicRemoteDataSource {
  Future<List<MusicModel>> getMusics();
  Future<MusicModel> getMusic(String id);
  Future<List<MusicModel>> filterMusics(String query);
}
