import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/core/router/router_names.dart';
import 'package:flutter_riverpod_app/core/theme/providers/theme_notifier_provider.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/utils/validate_route.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/widgets/drawer_header.dart';
import 'package:go_router/go_router.dart';

/// A custom drawer widget that provides navigation options and a theme toggle.
///
/// This widget extends `ConsumerWidget` to access the application's state
/// using Riverpod. It includes navigation options for 'Home', 'Counter',
/// and 'Settings', and a switch to toggle between dark and light themes.
/// The navigation is handled by validating route transitions using the
/// `validateRoute` utility function.
///
/// The drawer header is customized using `DrawerHeaderCustom`, and the
/// theme toggle switch updates the theme state via `themeNotifierProvider`.
class DrawerCustom extends ConsumerWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    final currentRoute = GoRouter.of(context);

    /// Handles the tap event for a route by validating the transition
    /// from the current route to the specified route name.
    ///
    /// Uses the `validateRoute` utility to ensure the route transition
    /// is permissible within the application's navigation logic.
    ///
    /// [routeName] The name of the route to navigate to.
    void onTapRoute(String routeName) {
      validateRoute(context, currentRoute.state.name!, routeName);
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeaderCustom(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => onTapRoute(AppRouterNames.home),
          ),
          ListTile(
            leading: const Icon(Icons.numbers),
            title: const Text('Counter'),
            onTap: () => onTapRoute(AppRouterNames.counter),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => onTapRoute(AppRouterNames.settings),
          ),
          SwitchListTile(
            value: isDarkMode,
            controlAffinity: ListTileControlAffinity.leading,
            thumbIcon: WidgetStateProperty.all(
              Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            ),
            title: Text("Dark Mode"),
            onChanged:
                (_) =>
                    ref.read(themeNotifierProvider.notifier).toggleDarkMode(),
          ),
        ],
      ),
    );
  }
}
