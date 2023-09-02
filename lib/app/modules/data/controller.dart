import 'package:get/get.dart';

class DataController extends GetxController {
  final _loading = true.obs;
  final records = <Map<String, dynamic>>[].obs;

  bool get loading => _loading.value;

  void fetchRecords() async {
    _loading.value = true;

    final response = await GetConnect().get('https://amst-exfinal-default-rtdb.firebaseio.com/sensor/alertas/.json');
    final dynamic data = response.body;

    records.clear();

    for (var MapEntry(:key, :value) in (data as Map).entries) {
      records.add({...value['uplink_message']['settings'], 'id': key});
    }

    _loading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    fetchRecords();
  }
}
