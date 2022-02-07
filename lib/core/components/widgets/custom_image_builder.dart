import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageBuilder extends StatelessWidget {
  const CustomImageBuilder({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
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
                  : '${progress.progress! * 100}%',
            )
          ],
        ),
      ),
      errorWidget: (_, __, ___) => const Icon(Icons.error),
    );
  }
}
