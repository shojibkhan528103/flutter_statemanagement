import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              Routes.PAGE_ONE,
              arguments: {},
            );
          },
          child: const Text('Page One'),
        ),
      ),
    );
  }
}
