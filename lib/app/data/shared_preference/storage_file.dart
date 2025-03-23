import 'package:shared_preferences/shared_preferences.dart';

import '../api/model/user_data_response.dart';

class UserDataStorage{

  UserDataStorage({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;
  var _storageKey = "StorageKey";

  Future<void> setUserData({required UserDataResponse userDataResponse})async {
    await sharedPreferences.setString(_storageKey, userDataResponse.toRawJson(),);
  }

  Future<UserDataResponse?> getUserData() async{
    final data = await sharedPreferences.getString(_storageKey);
    if (data != null) {
      return UserDataResponse.fromRawJson(data);
    } else {
      return null;
    }
  }

  Future<void> removedUserData() async {
    await sharedPreferences.remove(_storageKey);
  }

}