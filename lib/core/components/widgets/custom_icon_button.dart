import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: context.accentColor,
            ),
            30.widthBox,
            label.text.scale(1.3).bold.make(),
          ],
        ).pOnly(left: 15, top: 20, bottom: 10)
      ].toList(),
    );
  }
}
