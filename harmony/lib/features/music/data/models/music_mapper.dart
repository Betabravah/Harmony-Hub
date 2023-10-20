import '../../domain/entities/music.dart';
import 'music_model.dart';

extension MUsicMapper on Music {
  MusicModel toMusicModel() {
    return MusicModel(
      id: id,
      title: title,
      artist: artist,
      genre: genre,
      image: image,
      duration: duration,
      file: file,
      year: year,
      url: url,
    );
  }
}