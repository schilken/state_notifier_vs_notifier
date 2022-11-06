import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_new.dart';
import 'counter_new2.dart';
import 'counter_old.dart';
import 'counter_old2.dart';
import 'dependency.dart';
import 'riverpod_logger.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [RiverpodLogger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Riverpod 2.0 new Providers'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                ref.read(newCounterProvider.notifier).increment();
              },
              child: Text(
                'New NotifierProvider: ${ref.watch(newCounterProvider)}',
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                ref.read(newCounterProvider2.notifier).increment();
              },
              child: Text(
                'New NotifierProvider2: ${ref.watch(newCounterProvider2)}',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(oldCounterProvider.notifier).increment();
              },
              child: Text(
                'Old StateNotifierProvider: ${ref.watch(oldCounterProvider)}',
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                ref.read(oldCounterProvider2.notifier).increment();
              },
              child: Text(
                'Old StateNotifierProvider2: ${ref.watch(oldCounterProvider2)}',
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ref.read(dependencyProvider.notifier).increment();
              },
              child: Text(
                'change common factor: ${ref.watch(dependencyProvider)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
