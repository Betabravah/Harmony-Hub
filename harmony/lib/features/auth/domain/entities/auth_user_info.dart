import 'package:equatable/equatable.dart';

class AuthenticatedUserInfo extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String? image;

  const AuthenticatedUserInfo(
      {required this.firstName,
      required this.lastName,
      required this.email,
      this.image});
      
  @override
  List<Object?> get props => throw UnimplementedError();
}
