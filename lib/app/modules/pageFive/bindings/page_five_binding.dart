import 'package:get/get.dart';

import '../controllers/page_five_controller.dart';

class PageFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageFiveController>(
      () => PageFiveController(),
    );
  }
}
