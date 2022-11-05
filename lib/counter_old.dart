import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterOld extends StateNotifier<int> {
  CounterOld() : super(0);

  void increment() {
    state++;
  }
}

final oldCounterProvider = StateNotifierProvider<CounterOld,int>((ref) => CounterOld());
