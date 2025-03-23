import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/api/repository/users_data_repository.dart';
import '../data/shared_preference/storage_file.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class AppConfig{

  static final find = Get.find;

  Future<void> setUp() async {

    Get.lazyPut(() => UsersDataRepository(), fenix: true);
    //Get.lazyPut(() => GetCustomerRepository(loginTokenStorage: Get.find()), fenix: true);


    //=============Shared Preferences====================
    await Get.putAsync<SharedPreferences>(() => SharedPreferences.getInstance());
    Get.lazyPut(()=>UserDataStorage(sharedPreferences: Get.find()), fenix: true);

    //=============Shared Preferences====================
  }

}