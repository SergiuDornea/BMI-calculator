import 'package:flutter/material.dart';
import 'custom_text.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({this.color, this.childWidget});

  final Color? color;
  final Widget? childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).colorScheme.surfaceBright,
          borderRadius: BorderRadius.circular(20.0)),
      child: childWidget,
    );
  }
}

class GenderChild extends StatelessWidget {
  final IconData iconData;
  final String label;

  const GenderChild({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: MediaQuery.of(context).size.width * 0.2,
        ),
        const SizedBox(height: 8.0),
        CustomText(label: label),
      ],
    );
  }
}
