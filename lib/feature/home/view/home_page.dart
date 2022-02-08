import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/components/widgets/title_row.dart';

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
          20.heightBox,
          const TitleRow(title: 'Recently Played'),
          const CustomStackedSlider(),
          const TitleRow(title: 'For You'),
          const CustomStackedSlider(isForYouView: true),
          const TitleRow(
            title: 'Mixes For You',
            showButton: true,
          ),
          const CustomStackedSlider(showCenteredPlayer: true),
        ],
      ).pOnly(left: 15),
    );
  }
}
