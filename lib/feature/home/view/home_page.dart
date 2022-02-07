import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Home'.text.extraBold.xl4.make(),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          'Recently Played'.text.bold.xl2.make().pOnly(top: 25, bottom: 5),
          const CustomStackedSlider(),
          'For You'.text.bold.xl2.make().pOnly(bottom: 5),
          const CustomStackedSlider(isForYouView: true),
          'Mixes For You'.text.bold.xl2.make().pOnly(bottom: 5),
          const CustomStackedSlider(),
        ],
      ).pOnly(left: 15),
    );
  }
}
