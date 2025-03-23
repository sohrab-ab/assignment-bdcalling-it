import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../data/api/model/user_data_response.dart';
import '../../../data/api/repository/users_data_repository.dart';
import '../../../data/shared_preference/storage_file.dart';

class AllContentController extends GetxController {

  @override
  Future<void> onInit() async {
    super.onInit();
    if(await InternetConnectionChecker().hasConnection){
        getUserInfo();
        print("========== internet =============");
    }
    else{
      getUserInfoLocal();
      print("========== no internet =============");
    }

  }


  final UsersDataRepository usersDataRepository = Get.find();
  final UserDataStorage userDataStorage = Get.find();
  var userDataResponse = Rxn<UserDataResponse>();


  Future<void> getUserInfo() async {
    final response = await usersDataRepository.getUser();

    response.fold(
            (l) => debugPrint("user response ======= LEFT"),
            (r) async {
          debugPrint("user response ======= Right");
          userDataResponse.value = r;
          userDataStorage.setUserData(userDataResponse: r);

        });

  }


  Future<void> getUserInfoLocal() async {
    var data = await userDataStorage.getUserData();
    userDataResponse.value = data;
  }

}
