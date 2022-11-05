// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dependency.dart';

class CounterNew extends Notifier<int> {

  CounterNew() {
    print('CounterNew.constructor _delta');
  }

  int _delta = 1;
  int? _cachedState;

  @override
  int build() {
    _delta = ref.watch(dependencyProvider);
    print('CounterNew.build $_delta ');
    return _cachedState ?? 0;
  }

  void increment() {
    state += _delta;
    _cachedState = state;
  }
}

final newCounterProvider = NotifierProvider<CounterNew, int>(CounterNew.new);
