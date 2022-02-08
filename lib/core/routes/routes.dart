import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/feature/favourites/view/fav_page.dart';
import 'package:tidal_ui_clone/feature/search/view/search_page.dart';

import '../../feature/home/view/home_page.dart';

const String homePageRoute = '/home';
const String searchPageRoute = '/search';
const String favPageRoute = '/fav';

//not really a good thing to do
//#TODO: find a better workaround?
const List<String> routes = [
  homePageRoute,
  searchPageRoute,
  favPageRoute,
];

Route generateRoutes(RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    transitionDuration: const Duration(microseconds: 0),
    pageBuilder: (_, __, ___) {
      switch (settings.name) {
        case searchPageRoute:
          return const SearchPage();
        case favPageRoute:
          return const FavouritesPage();
        case homePageRoute:
        default:
          return const HomePage();
      }
    },
  );
}
