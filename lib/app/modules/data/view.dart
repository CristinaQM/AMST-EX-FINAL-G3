import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_examenp/app/modules/data/controller.dart';
import 'package:sq_examenp/app/modules/menu/menu_button.dart';

class DataView extends GetView<DataController> {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.fetchRecords;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Datos Sensados'),
      ),
      body: Center(
        child: Obx(() {
          if (controller.loading) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator(),
                ),
              ],
            );
          } else {
            return Column(
              children: controller.records
                  .map<Widget>(
                    (record) => Text(record['time']),
                  )
                  .toList(),
            );
          }
        }),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
