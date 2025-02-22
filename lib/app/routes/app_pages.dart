import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pageFive/bindings/page_five_binding.dart';
import '../modules/pageFive/views/page_five_view.dart';
import '../modules/pageFour/bindings/page_four_binding.dart';
import '../modules/pageFour/views/page_four_view.dart';
import '../modules/pageOne/bindings/page_one_binding.dart';
import '../modules/pageOne/views/page_one_view.dart';
import '../modules/pageThree/bindings/page_three_binding.dart';
import '../modules/pageThree/views/page_three_view.dart';
import '../modules/pageTwo/bindings/page_two_binding.dart';
import '../modules/pageTwo/views/page_two_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_ONE,
      page: () => const PageOneView(),
      binding: PageOneBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.PAGE_TWO,
      page: () => const PageTwoView(),
      binding: PageTwoBinding(),
      transition: Transition.zoom,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.PAGE_THREE,
      page: () => const PageThreeView(),
      binding: PageThreeBinding(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.PAGE_FOUR,
      page: () => const PageFourView(),
      binding: PageFourBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.PAGE_FIVE,
      page: () => PageFiveView(),
      binding: PageFiveBinding(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
