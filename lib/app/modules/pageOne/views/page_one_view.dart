import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/page_one_controller.dart';

class PageOneView extends GetView<PageOneController> {
  const PageOneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageOneView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              Routes.PAGE_TWO,
              arguments: {},
            );
          },
          child: const Text('Page Two'),
        ),
      ),
    );
  }
}
