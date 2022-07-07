import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeStore extends StateNotifier<HomeStore> {
  HomeStore(super.state);
}

class CountState extends StateNotifier<int> {
  CountState(int count) : super(count);

  void increment() => state = state + 1;
}
