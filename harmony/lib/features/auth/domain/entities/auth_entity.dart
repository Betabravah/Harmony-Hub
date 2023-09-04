import 'package:equatable/equatable.dart';

import 'auth_user_info.dart';

class AuthenticatedEntity extends Equatable {
  final AuthenticatedUserInfo authenticatedUserInfo;
  final String token;

  const AuthenticatedEntity(
      {required this.authenticatedUserInfo, required this.token});

  @override
  List<Object?> get props => [authenticatedUserInfo, token];
}
