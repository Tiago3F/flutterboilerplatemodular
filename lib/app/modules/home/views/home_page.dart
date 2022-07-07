import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/home_store.dart';

final countStateProvider =
    StateNotifierProvider<CountState, int>((ref) => CountState(0));

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final int count = ref.watch(countStateProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Boilerplate")),
        body:
            // Center(child: Text('$count')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Modular.to.navigate('/products/');
                }),
                child: const Text("Entrar")),
            Center(
              // Consumer é um widget que permite a leitura de provedores.
              child: Consumer(builder: (context, ref, _) {
                final count = ref.watch(countStateProvider);
                return Text('$count');
              }),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(countStateProvider.notifier).increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
