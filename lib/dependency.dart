// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dependency extends Notifier<int> {
  Dependency() {
    print('CounterNew.constructor');
  }

  @override
  int build() {
    print('Count.build');
    return 1;
  }

  void increment() {
    state++;
  }
}

final dependencyProvider = NotifierProvider<Dependency, int>(Dependency.new);
