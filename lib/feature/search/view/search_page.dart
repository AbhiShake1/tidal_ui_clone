import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ).pOnly(left: 20, right: 10),
                'Search'
                    .text
                    .color(Colors.black.withOpacity(0.51))
                    .semiBold
                    .scale(1.2)
                    .make(),
              ],
            ),
          ).expand(),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
