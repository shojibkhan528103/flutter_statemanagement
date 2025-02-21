import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page_five_controller.dart';

class PageFiveView extends GetView<PageFiveController> {
  const PageFiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageFiveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PageFiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
