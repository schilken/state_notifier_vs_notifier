// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dependency.dart';

class CounterNew2 extends AutoDisposeNotifier<int> {
  CounterNew2() {
    print('CounterNew2.constructor _delta: $_delta');
  }

  int _delta = 0;
  int? _cachedState;

  @override
  int build() {
    ref.onDispose(() => print('CounterNew2.onDispose'));
    _delta = ref.watch(dependencyProvider);
    print('CounterNew2.build _delta: $_delta ');
    return _cachedState ?? 0;
  }

  void increment() {
    state += _delta;
    _cachedState = state;
  }
}

final newCounterProvider2 =
    AutoDisposeNotifierProvider<CounterNew2, int>(CounterNew2.new);
