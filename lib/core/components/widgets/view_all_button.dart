import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: 'VIEW ALL'
          .text
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
