import 'package:get/get.dart';

import '../controllers/all_content_controller.dart';

class AllContentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllContentController>(
      () => AllContentController(),
    );
  }
}
