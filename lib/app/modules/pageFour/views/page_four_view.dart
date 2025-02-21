import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: const Center(
        child: Text(
          'PageFourView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
