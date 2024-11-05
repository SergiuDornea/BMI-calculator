import 'package:flutter/material.dart';
import 'my_icon_button.dart';

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
