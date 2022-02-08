import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.cardColor,
        ),
        child: text.text.subtitle2(context).make(),
      ),
      onPressed: () => debugPrint('Custom Button pressed'),
    );
  }
}
