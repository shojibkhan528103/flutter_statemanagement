import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/page_four_controller.dart';

class PageFourView extends GetView<PageFourController> {
  const PageFourView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageFourView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              Routes.PAGE_FIVE,
              arguments: {},
            );
          },
          child: const Text('Page Five'),
        ),
      ),
    );
  }
}
