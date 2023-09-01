import 'package:flutter/material.dart';
import 'package:sq_examenp/app/modules/menu/menu_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Examen Final'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AMST 2023 PAO1'),
            Text('Examen Final'),
            Text('Nicolás Segovia'),
            Text('Cristina Quinteros'),
          ],
        ),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
