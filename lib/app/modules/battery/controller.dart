import 'package:get/get.dart';

class BatteryController extends GetxController {
  final _loading = true.obs;
  RxDouble _batteryPercent = 0.0.obs;

  bool get loading => _loading.value;
  double get batteryPercent => _batteryPercent.value;

  void fetchBattery() async {
    _loading.value = true;

    final response = await GetConnect().get('https://amst-exfinal-default-rtdb.firebaseio.com/sensor/bateria/.json');
    _batteryPercent.value = response.body.toDouble() / 100;

    _loading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    fetchBattery();
  }
}
