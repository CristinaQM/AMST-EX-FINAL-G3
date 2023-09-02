import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_examenp/app/modules/menu/menu_button.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'controller.dart';

class BatteryView extends GetView<BatteryController> {
  const BatteryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Estado Batería'),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                progressColor: Theme.of(context).colorScheme.surface,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                radius: 100,
                lineWidth: 20.0,
                percent: controller.batteryPercent,
                center: Text(
                  '${controller.batteryPercent * 100}' '%',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                (controller.batteryPercent * 100 > 50) ? 'Batería Alta' : 'Batería Media',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
