import 'package:get/get.dart';

import '../../all_content/controllers/all_content_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/index_controller.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(
      () => IndexController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
    Get.lazyPut<AllContentController>(
          () => AllContentController(),
    );
  }
}
