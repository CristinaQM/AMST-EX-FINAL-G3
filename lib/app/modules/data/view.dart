import 'package:flutter/material.dart';
import 'package:sq_examenp/app/modules/menu/menu_button.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Datos Sensados'),
      ),
      body: const Center(
        child: Text('Data View'),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
