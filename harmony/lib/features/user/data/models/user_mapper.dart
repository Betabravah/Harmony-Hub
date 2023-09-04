import '../../domain/entities/user.dart';
import 'user_model.dart';

extension UserMapper on User {
  UserModel toUserModel() {
    return UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      image: image,
      favoriteMusics: favoriteMusics,
    );
  }
}