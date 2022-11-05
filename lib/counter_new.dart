import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNew extends Notifier<int> {
  @override
  int build() {
    print('Count.build');
    return 0;
  }

  void increment() {
    state++;
  }
}

final newCounterProvider = NotifierProvider<CounterNew, int>(CounterNew.new);
