import 'package:e_commerce_app/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables

  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  /// Jump to specific dot selected page

  void dotNavigationClick(index) async {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// update current index and jump to next page\

  void nextPage() async {
    if (currentPageIndex.value == 2) {

      Get.offAll(const LoginScreen());
      // Get.offAll(LoginScreen());
      /// Login screen
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index and jump to last page

  void skipPage() async {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
