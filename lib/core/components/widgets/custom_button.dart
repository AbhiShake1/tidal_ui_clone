import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: text.text
          .subtitle2(context)
          .make()
          .pSymmetric(v: 5, h: 8)
          .card
          .roundedSM
          .make(),
      onPressed: () => debugPrint('View All pressed'),
    );
  }
}
