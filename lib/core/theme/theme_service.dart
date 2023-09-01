import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {
  ThemeService._();

  static void toggle() {
    _setLightMode();
  }

  static void _setLightMode() {
    Get.changeThemeMode(ThemeMode.light);
  }
}
