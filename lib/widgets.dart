import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.width * 0.08,
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const MyIconButton({required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.outlineVariant),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size: 50.0,
        ),
      ),
    );
  }
}

class IconButtonsRow extends StatelessWidget {
  final VoidCallback addPressed;
  final VoidCallback minusPressed;

  const IconButtonsRow({
    required this.addPressed,
    required this.minusPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyIconButton(iconData: Icons.add, onPressed: addPressed),
        const SizedBox(width: 18.0),
        MyIconButton(iconData: Icons.remove, onPressed: minusPressed),
      ],
    );
  }
}