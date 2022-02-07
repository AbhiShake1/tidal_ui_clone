import 'package:hooks_riverpod/hooks_riverpod.dart';

class _NavigationIndexProvider extends StateNotifier<int> {
  _NavigationIndexProvider() : super(0);

  int get index => state;
  set index(int val) => state = val;
}

final navigationIndexRef = StateNotifierProvider<_NavigationIndexProvider, int>(
  (_) => _NavigationIndexProvider(),
);
