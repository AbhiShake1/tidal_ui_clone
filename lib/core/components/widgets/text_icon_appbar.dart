import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextIconAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TextIconAppBar({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title.text.extraBold.xl4.make(),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
