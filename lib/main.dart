import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/core/router/router_config.dart';
import 'package:flutter_riverpod_app/core/theme/providers/theme_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final themeNotifier = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Riverpod',
      theme: themeNotifier.get(),
      routerConfig: AppRouter.router,
    );
  }
}
