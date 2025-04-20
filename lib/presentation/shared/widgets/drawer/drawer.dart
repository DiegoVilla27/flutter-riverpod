import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/core/router/router_names.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/utils/validate_route.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/widgets/drawer_header.dart';
import 'package:go_router/go_router.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
