import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {

  PageController pageController = PageController(initialPage: 0);

  var icon_bottom_nav = ["assets/icons/icon_home.svg", "assets/icons/icon_tv.svg", "assets/icons/icon_arrow_down.svg",
    "assets/icons/icon_user.svg"];

  var index = 0.obs;
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

}
