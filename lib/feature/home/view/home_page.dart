import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_button.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Home'.text.extraBold.xl4.make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          'Recently Played'.text.bold.xl2.make().pOnly(top: 25, bottom: 5),
          const CustomStackedSlider(),
          'For You'.text.bold.xl2.make().pOnly(bottom: 5),
          const CustomStackedSlider(isForYouView: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'Mixes For You'.text.bold.xl2.make().pOnly(bottom: 5),
              const CustomButton(text: 'VIEW ALL'),
            ],
          ),
          const CustomStackedSlider(showCenteredPlayer: true),
        ],
      ).pOnly(left: 15),
    );
  }
}
