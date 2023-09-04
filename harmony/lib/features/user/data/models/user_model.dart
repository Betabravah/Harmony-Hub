import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.password,
      required super.image,
      required super.favoriteMusics});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        favoriteMusics: json['favoriteMusics']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'firstName': super.firstName,
      'lastName': super.lastName,
      'email': super.email,
      'password': super.password,
      'image': super.image,
      'favoriteMusics': super.favoriteMusics
    };
  }
}
