import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCon extends GetxController {
  final displayText = "Hello World";
  @override
  void onInit() {
    debugPrint('Init HomeCon');
    super.onInit();
  }

  @override
  void dispose() {
    debugPrint('dispose HomeCon');

    super.dispose();
  }
}

class SettingCon extends GetxController {
  @override
  void onInit() {
    debugPrint('Init SettingCon');
    super.onInit();
  }

  @override
  void dispose() {
    debugPrint('dispose SettingCon');

    super.dispose();
  }
}

class DetailCon extends GetxController {
  final addToCart = 1.obs;
  @override
  void onInit() {
    debugPrint('Init DetailCon');
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint('onClose DetailCon');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose DetailCon');
  }
}
class BottomNavController extends GetxController {
  final addToCart = 1.obs;
  @override
  void onInit() {
    debugPrint('Init BottomNavController');
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint('onClose BottomNavController');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose BottomNavController');
  }
}
