import 'package:flutter/material.dart';

import '../../feature/home/view/home_page.dart';

Route generateRoutes(RouteSettings settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      switch (settings.name) {
        case '/':
        default:
          return const HomePage();
      }
    },
  );
}
