import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/presentation/pages/counter/providers/counter_provider.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/drawer.dart';

/// A screen that displays a counter value and allows the user to increment it.
///
/// This widget is a [ConsumerWidget] that uses Riverpod for state management.
/// It observes the [counterProvider] to display the current counter value and
/// provides a floating action button to increment the counter. The screen
/// includes an app bar with a title, a custom drawer, and a body that centers
/// the counter value text.
class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        centerTitle: true,
        backgroundColor: theme.onPrimary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        mini: true,
        child: Icon(Icons.plus_one),
      ),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: Center(
          child: Text("Value: $counter", style: TextStyle(fontSize: 30.0)),
        ),
      ),
    );
  }
}
