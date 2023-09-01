import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/app_themes.dart';
import 'routes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Examen Final G3',
      theme: AppThemes.lightThemeData,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      defaultTransition: Transition.fadeIn,
      initialRoute: Routes.home,
    );
  }
}
