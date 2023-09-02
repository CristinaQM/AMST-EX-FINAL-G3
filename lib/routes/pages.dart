import 'package:get/get.dart';
import 'package:sq_examenp/app/modules/battery/view.dart';
import 'package:sq_examenp/app/modules/data/controller.dart';
import 'package:sq_examenp/app/modules/data/view.dart';
import 'package:sq_examenp/app/modules/home/view.dart';

part './routes.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: Routes.battery,
      page: () => const BatteryView(),
    ),
    GetPage(
      name: Routes.data,
      page: () => const DataView(),
      binding: BindingsBuilder(() {
        Get.put(DataController());
      }),
    ),
  ];
}
