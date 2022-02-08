import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_button.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key? key,
    required this.title,
    this.showButton = false,
    this.buttonTitle = 'VIEW ALL',
  }) : super(key: key);

  final String title;
  final bool showButton;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.bold.xl2.make().pOnly(bottom: 5),
        if (showButton) CustomButton(text: buttonTitle),
      ],
    ).pOnly(left: 15);
  }
}
