import 'package:flutter/material.dart';
import 'package:sq_examenp/app/modules/menu/menu_button.dart';

class BatteryView extends StatelessWidget {
  const BatteryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Estado Batería'),
      ),
      body: const Center(
        child: Text('Battery View'),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
