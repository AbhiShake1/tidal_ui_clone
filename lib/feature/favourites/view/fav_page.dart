import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
