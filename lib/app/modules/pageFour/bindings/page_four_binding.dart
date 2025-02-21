import 'package:get/get.dart';

import '../controllers/page_four_controller.dart';

class PageFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageFourController>(
      () => PageFourController(),
    );
  }
}
