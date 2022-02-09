import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/models/image_slider_model/image_slider_model.dart';

final imageSliderModelProviderRef =
    FutureProvider.family<List<ImageSliderModel>, String>(
  (ref, key) async {
    final content =
        await rootBundle.loadString('assets/json/custom_slider_data.json');
    final List jsonData = json.decode(content)[key];
    return List.generate(
      jsonData.length,
      (index) => ImageSliderModel.fromJson(jsonData[index]),
    );
  },
);
