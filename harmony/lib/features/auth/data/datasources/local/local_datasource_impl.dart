import 'dart:convert';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../domain/entities/auth_user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/auth_user_info_model.dart';
import 'local_datasource.dart';

class LocalDatasourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  const LocalDatasourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheAuthenticatedUserInfo(
      AuthenticatedUserInfoModel authenticatedUserInfo) {
    return sharedPreferences.setString(
      AUTHENTICATED_USER_INFO,
      json.encode(authenticatedUserInfo.toJson()),
    );
  }

  @override
  Future<void> cacheToken(String token) {
    return sharedPreferences.setString(TOKEN, token);
  }

  @override
  Future<void> deleteToken() async {
    await sharedPreferences.remove(TOKEN);
  }

  @override
  Future<void> deleteAuthenticatedUserInfo() async {
    await sharedPreferences.remove(AUTHENTICATED_USER_INFO);
  }

  @override
  Future<AuthenticatedUserInfo?> getAuthenticatedUserInfo() {
    try {
      final jsonString = sharedPreferences.getString(AUTHENTICATED_USER_INFO);
      if (jsonString != null) {
        return Future.value(
          AuthenticatedUserInfoModel.fromJson(
            json.decode(jsonString),
          ),
        );
      } else {
        throw CacheException(message: 'No cached user found.');
      }
    } on CacheException {
      throw CacheException(message: 'No cached user found.');
    }
  }

  @override
  Future<String> getToken() async {
    try {
      final token = await sharedPreferences.getString(TOKEN);
      if (token != null) {
        return Future.value(token);
      }
      throw CacheException(message: 'No cached token found.');
    } catch (e) {
      throw CacheException(message: 'Error while removing cachced token.');
    }
  }
}
