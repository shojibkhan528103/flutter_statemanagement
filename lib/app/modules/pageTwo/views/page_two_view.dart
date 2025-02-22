import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/page_two_controller.dart';

class PageTwoView extends GetView<PageTwoController> {
  const PageTwoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageTwoView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              Routes.PAGE_THREE,
              arguments: {},
            );
          },
          child: const Text('Page Three'),
        ),
      ),
    );
  }
}
