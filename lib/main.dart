import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/core/router/router_config.dart';
import 'package:flutter_riverpod_app/core/theme/providers/theme_color_provider.dart';
import 'package:flutter_riverpod_app/core/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/core/theme/providers/theme_darkmode_provider.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    final selectedColor = ref.watch(selectedColorThemeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Riverpod',
      theme:
          ThemeCustom(
            selectedColor: selectedColor,
            isDarkMode: isDarkMode,
          ).get(),
      routerConfig: AppRouter.router,
    );
  }
}
