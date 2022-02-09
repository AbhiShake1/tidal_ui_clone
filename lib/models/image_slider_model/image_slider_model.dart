import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider_model.freezed.dart';

part 'image_slider_model.g.dart';

@freezed
class ImageSliderModel with _$ImageSliderModel {
  factory ImageSliderModel({
    String? title1,
    required String singer,
    required String by,
    String? noOfTracks,
    required String imageUrl,
  }) = _ImageSliderModel;

  factory ImageSliderModel.fromJson(Map<String, Object?> json) =>
      _$ImageSliderModelFromJson(json);
}
