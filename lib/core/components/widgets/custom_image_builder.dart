import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomImageBuilder extends StatelessWidget {
  const CustomImageBuilder(
      {Key? key,
      required this.imageUrl,
      this.height = 180,
      this.width = 180,
      this.isCircular = false})
      : super(key: key);

  final String imageUrl;
  final double height;
  final double width;
  final bool isCircular;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius:
            isCircular ? null : const BorderRadius.all(Radius.circular(10)),
      ),
      clipBehavior: Clip.hardEdge,
      child: CachedNetworkImage(
        height: height,
        width: width,
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        progressIndicatorBuilder: (_, __, progress) => Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(value: progress.progress),
              Text(
                progress.progress == null
                    ? 'Almost done'
                    : '${(progress.progress! * 100).toStringAsFixed(1)}%',
              )
            ],
          ),
        ),
        errorWidget: (_, __, ___) => const Icon(Icons.error),
      ),
    ).pOnly(bottom: 10, right: 15);
  }
}
