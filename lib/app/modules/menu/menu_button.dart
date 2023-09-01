import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_examenp/routes/pages.dart';

class MenuButtonWidget extends StatefulWidget {
  const MenuButtonWidget({super.key});

  @override
  State<MenuButtonWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    if (pressed) {
      return GestureDetector(
        onTap: () {
          setState(() {
            pressed = false;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          width: 300,
          height: 350,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Menu'),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.data);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.pinkAccent.shade100),
                      child: const Text('Data'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.battery);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.pinkAccent.shade100),
                      child: const Text('Batería'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          setState(
            () {
              pressed = true;
            },
          );
        },
      );
    }
  }
}
