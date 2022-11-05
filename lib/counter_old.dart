// ignore_for_file: avoid_print
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dependency.dart';

class CounterOld extends StateNotifier<int> {
  CounterOld(this._delta) : super(0) {
    print('CounterOld.constructor _delta: $_delta');
  }

  final int _delta;

  void increment() {
    state += _delta;
  }
}

final oldCounterProvider = StateNotifierProvider<CounterOld, int>(
  (ref) => CounterOld(
    ref.watch(dependencyProvider),
  ),
);
