import '../../domain/entities/signup_entity.dart';

class SignUpModel extends SignUpEntity {
  SignUpModel(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.password});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': super.firstName,
      'lastName': super.lastName,
      'email': super.email,
      'password': super.password
    };
  }
}