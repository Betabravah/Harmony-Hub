import '../../domain/entities/music.dart';

class MusicModel extends Music {
  MusicModel({
    required super.id,
    required super.title,
    required super.artist,
    required super.genre,
    required super.image,
    required super.duration,
    required super.file,
    required super.year,
    required super.url,
  });

  factory MusicModel.fromJson(Map<String, dynamic> json) {
    return MusicModel(
      id: json['id'],
      title: json['title'],
      artist: json['artist'],
      genre: json['genre'],
      image: json['image'],
      duration: json['duration'],
      file: json['file'],
      year: json['year'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'title': super.title,
      'artist': super.artist,
      'genre': super.genre,
      'image': super.image,
      'duration': super.duration,
      'file': super.file,
      'year': super.year,
      'url': super.url,
    };
  }
}
