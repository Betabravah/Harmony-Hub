import 'dart:convert';

import '../../../domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/error/exceptions.dart';
import '../../models/user_model.dart';
import 'local_datasource.dart';

class UserLocalDatasourceImpl implements UserLocalDatasource {
  final SharedPreferences sharedPreferences;

  UserLocalDatasourceImpl({required this.sharedPreferences});

  Future<void> cacheUser(UserModel userToCache) {
    return sharedPreferences.setString(
      CACHED_USER,
      json.encode(userToCache.toJson()),
    );
  }

  Future<UserModel> getUser(String id) async {
    try {
      final jsonString = sharedPreferences.getString(CACHED_USER);
      if (jsonString != null) {
        return Future.value(
          UserModel.fromJson(
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
  Future<UserModel> updateUser(User user) async {
    try {
      final jsonStringList = sharedPreferences.getStringList(CACHED_USER);

      if (jsonStringList != null) {
        final userJsonList =
            jsonStringList.map((json) => jsonDecode(json)).toList();

        final users =
            userJsonList.map((json) => UserModel.fromJson(json)).toList();

        for (int i = 0; i < users.length; i++) {
          if (users[i].id == user.id) {
            users[i] = user as UserModel;
            return user;
          }
        }

        throw CacheException(message: 'User not Found');
      } else {
        throw CacheException(message: 'User not Found');
      }
    } catch (e) {
      throw CacheException(message: 'User not Found');
    }
  }
}
