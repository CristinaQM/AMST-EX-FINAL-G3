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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'AMST 2023 PAO1',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Examen Final',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nicolás Segovia',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  'Cristina Quinteros',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: const MenuButtonWidget(),
    );
  }
}
