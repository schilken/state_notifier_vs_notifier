// ignore_for_file: avoid_print
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print(
        'didUpdateProvider → ${provider.name ?? provider.runtimeType},  "newValue": "$newValue"');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    print('didDisposeProvider → ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    print('didAddProvider → ${provider.name ?? provider.runtimeType}');
  }
}
