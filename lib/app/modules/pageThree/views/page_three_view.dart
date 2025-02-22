import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/page_three_controller.dart';

class PageThreeView extends GetView<PageThreeController> {
  const PageThreeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageThreeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              Routes.PAGE_FOUR,
              arguments: {},
            );
          },
          child: const Text('Page Five'),
        ),
      ),
    );
  }
}
