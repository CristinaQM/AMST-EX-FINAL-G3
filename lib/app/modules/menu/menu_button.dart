import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              Column(
                children: [
                  MenuPanel(
                    label: 'Data',
                    icon: MdiIcons.fileDocumentOutline,
                    onTap: () {
                      Get.offAllNamed(Routes.data);
                    },
                  ),
                  const SizedBox(height: 20),
                  MenuPanel(
                    label: 'Batería',
                    icon: MdiIcons.battery,
                    onTap: () {
                      Get.offAllNamed(Routes.battery);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          setState(
            () {
              pressed = true;
            },
          );
        },
        child: Icon(MdiIcons.menu),
      );
    }
  }
}

class MenuPanel extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onTap;
  const MenuPanel({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: 230,
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
