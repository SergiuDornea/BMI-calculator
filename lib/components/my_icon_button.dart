import 'package:flutter/material.dart';

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
