import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomStackedSlider extends StatelessWidget {
  const CustomStackedSlider({Key? key, this.isForYouView = false}) : super(key: key);

  final bool isForYouView;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 350,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          11,
          (index) => Stack(
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i1.sndcdn.com/avatars-1ZsDzgJytgW9ypph-RVtCxA-t500x500.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ).pOnly(bottom: 10, right: 10),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 200,
                      color: isForYouView
                          ? Colors.black.withOpacity(0.4)
                          : context.canvasColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.heightBox,
                          'DAILY UPDATED MIX'.text.red500.make(),
                          'Astrid'.text.bold.make(),
                          'by Me'.text.subtitle2(context).make(),
                          '65 tracks'.text.subtitle2(context).make(),
                          (isForYouView ? 20 : 0).heightBox,
                        ],
                      ).pOnly(left: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).pOnly(top: 10, bottom: 25),
    );
  }
}
