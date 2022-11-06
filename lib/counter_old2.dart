// ignore_for_file: avoid_print
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dependency.dart';

class CounterOld2 extends StateNotifier<int> {
  CounterOld2(this.ref) : super(0) {
    _delta = ref.watch(dependencyProvider);
    print('CounterOld2.constructor _delta: $_delta');
  }
  final StateNotifierProviderRef<CounterOld2, int> ref;
  int _delta = 0;

  void increment() {
    state += _delta;
  }
}

final oldCounterProvider2 = StateNotifierProvider<CounterOld2, int>(
  (ref) => CounterOld2(ref),
);
