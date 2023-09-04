import '../../../music/domain/entities/music.dart';

class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String image;
  final List<Music> favoriteMusics;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.image,
    required this.favoriteMusics,
  });
}
