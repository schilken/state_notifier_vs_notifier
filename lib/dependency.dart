// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dependency extends Notifier<int> {
  Dependency() {
    print('Dependency.constructor');
  }

  @override
  int build() {
    print('Dependency.build');
    return 1;
  }

  void increment() {
    state++;
  }
}

final dependencyProvider = NotifierProvider<Dependency, int>(Dependency.new);
