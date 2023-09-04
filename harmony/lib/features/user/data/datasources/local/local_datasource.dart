import '../../models/user_model.dart';

abstract class UserLocalDatasource {
  Future<UserModel> getUser(String id);
  Future<UserModel> updateUser(UserModel user);
  Future<void> cacheUser(UserModel user);
}