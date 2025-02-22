import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/page_five_controller.dart';

class PageFiveView extends GetView<PageFiveController> {
  PageFiveView({super.key});

  final List<String> imgList = [
    'assets/slider3.jpg',
    'assets/slider2.jpg',
    'assets/slider1.jpg',
  ];

  final RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Full Screen Carousel with Indicator')),
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imgList[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 3.0, // Makes each item fullscreen
                viewportFraction: 1.0, // One item per screen
                enlargeCenterPage: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  _currentIndex.value = index;
                },
              ),
            ),
          ),
          Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _currentIndex.value = entry.key,
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex.value == entry.key
                          ? Colors.blueAccent
                          : Colors.grey,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
