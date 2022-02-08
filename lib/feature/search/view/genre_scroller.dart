import 'package:flutter/material.dart';

import '../../../core/components/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class GenreScroller extends StatelessWidget {
  const GenreScroller({
    Key? key,
    required this.genre1,
    required this.genre2,
  }) : super(key: key);

  final List<String> genre1;
  final List<String> genre2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              genre1.length,
              (index) => CustomButton(text: genre1[index]),
            ),
          ),
          Row(
            children: List.generate(
              genre2.length,
              (index) => CustomButton(text: genre2[index]),
            ),
          ),
        ],
      ),
    );
  }
}
