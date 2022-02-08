import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_image_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomStackedSlider extends StatelessWidget {
  const CustomStackedSlider(
      {Key? key, this.isForYouView = false, this.showCenteredPlayer = false})
      : super(key: key);

  final bool isForYouView;
  final bool showCenteredPlayer;

  @override
  Widget build(BuildContext context) {
    final double mainHeight = isForYouView ? 420 : 350;
    return SizedBox(
      width: context.screenWidth,
      height: mainHeight,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          11,
          (index) => InkWell(
            onTap: () => debugPrint('inkwell tapped'),
            child: Stack(
              children: [
                CustomImageBuilder(
                  imageUrl:
                      'https://i1.sndcdn.com/avatars-1ZsDzgJytgW9ypph-RVtCxA-t500x500.jpg',
                  width: isForYouView ? 270 : 180,
                  height: isForYouView ? 500 : 180,
                ),
                Positioned(
                  bottom: isForYouView ? -10 : 40,
                  right: 0,
                  left: 0,
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: isForYouView
                                ? [
                                    context.canvasColor.withOpacity(0.8),
                                    context.canvasColor.withOpacity(0.6),
                                  ]
                                : [context.canvasColor, context.canvasColor],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            'DAILY UPDATED MIX'.text.red500.make(),
                            'Astrid'.text.bold.make(),
                            'by Me'.text.subtitle2(context).make(),
                            '65 tracks'.text.subtitle2(context).make(),
                            (isForYouView ? 20 : 0).heightBox,
                          ].map((w) => w.pOnly(top: 8)).toList(),
                        ).pOnly(left: 10),
                      ),
                    ),
                  ),
                ),
                if (showCenteredPlayer)
                  Positioned(
                    bottom: mainHeight / 2,
                    right: 0,
                    left: 0,
                    child: FloatingActionButton.small(
                      hoverElevation: 60,
                      onPressed: () => debugPrint('Play button tapped'),
                      child: const Icon(
                        Icons.play_arrow,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ).pOnly(top: 10, bottom: 25),
    );
  }
}
