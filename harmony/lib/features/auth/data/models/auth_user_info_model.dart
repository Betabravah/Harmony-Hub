import '../../domain/entities/auth_user_info.dart';

class AuthenticatedUserInfoModel extends AuthenticatedUserInfo {
  const AuthenticatedUserInfoModel({
    required super.firstName,
    required super.lastName,
    required super.email,
  });

  factory AuthenticatedUserInfoModel.fromJson(Map<String, dynamic> json) {
    return AuthenticatedUserInfoModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': super.firstName,
      'lastName': super.lastName,
      'email': super.email,
    };
  }
}
