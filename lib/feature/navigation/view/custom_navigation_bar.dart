import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/feature/navigation/providers/navigation_index_provider.dart';

import '../../../core/routes/routes.dart';

class CustomNavigationBar extends ConsumerWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      currentIndex: ref.watch(navigationIndexRef),
      onTap: (newIndex) {
        ref.read(navigationIndexRef.notifier).index = newIndex;
        Navigator.pushReplacementNamed(context, routes[newIndex]);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
      ],
    );
  }
}
