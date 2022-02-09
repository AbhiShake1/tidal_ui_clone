import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_image_builder.dart';
import 'package:tidal_ui_clone/models/image_slider_model/image_slider_model.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomStackedSlider extends StatelessWidget {
  const CustomStackedSlider(
      {Key? key,
      this.isForYouView = false,
      this.showCenteredPlayer = false,
      this.isCircular = false,
      required this.models,
      this.maxLines = 1})
      : super(key: key);

  final bool isForYouView;
  final bool showCenteredPlayer;
  final bool isCircular;
  final List<ImageSliderModel> models;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final double mainHeight = isForYouView ? 420 : 350;
    return SizedBox(
      width: context.screenWidth,
      height: mainHeight,
      child: HookConsumer(
        builder: (context, ref, child) => ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: List.generate(
            models.length,
            (index) {
              ImageSliderModel model = models[index];
              return InkWell(
                onTap: () => debugPrint('inkwell tapped'),
                child: Stack(
                  children: [
                    CustomImageBuilder(
                      imageUrl: model.imageUrl,
                      //'https://i1.sndcdn.com/avatars-1ZsDzgJytgW9ypph-RVtCxA-t500x500.jpg',
                      isCircular: isCircular,
                      width: isForYouView ? 270 : 180,
                      height: isForYouView ? 500 : 180,
                    ),
                    Positioned(
                      bottom: isForYouView ? 0 : 50,
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
                                5.heightBox,
                                (model.title1 ?? '').text.ellipsis.red500.make(),
                                model.singer.text.ellipsis.bold.make(),
                                model.by.text
                                    .maxLines(maxLines)
                                    .subtitle2(context)
                                    .make(),
                                (model.noOfTracks ?? '')
                                    .text
                                    .ellipsis
                                    .subtitle2(context)
                                    .make(),
                              ].map((w) => w..pOnly(top: 8)).toList(),
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
              );
            },
          ),
        ).pOnly(top: 10, bottom: 25),
      ),
    );
  }
}
