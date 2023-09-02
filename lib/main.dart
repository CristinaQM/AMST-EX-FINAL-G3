import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/app_themes.dart';
import 'routes/pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
