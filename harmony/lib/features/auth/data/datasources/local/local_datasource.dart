
import '../../../domain/entities/auth_user_info.dart';
import '../../models/auth_user_info_model.dart';

abstract class LocalDataSource {
  const LocalDataSource();

  Future<void> cacheAuthenticatedUserInfo(
      AuthenticatedUserInfoModel authenticatedUserInfo);

  Future<String> getToken();

  Future<void> cacheToken(String token);

  Future<void> deleteToken();

  Future<void> deleteAuthenticatedUserInfo();

  Future<AuthenticatedUserInfo?> getAuthenticatedUserInfo();
}
