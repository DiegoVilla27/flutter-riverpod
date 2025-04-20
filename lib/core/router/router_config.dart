import 'package:flutter_riverpod_app/core/router/router_names.dart';
import 'package:flutter_riverpod_app/presentation/pages/counter/counter_screen.dart';
import 'package:flutter_riverpod_app/presentation/pages/home/home_screen.dart';
import 'package:flutter_riverpod_app/presentation/pages/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

/// A class that defines the application's routing configuration using GoRouter.
///
/// This class sets up the initial location and defines the routes for the
/// application, including the home and settings screens. Each route is
/// associated with a name and a path, and uses a builder function to return
/// the corresponding screen widget.
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRouterNames.home,
        path: '/',
        builder: (_, _) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRouterNames.counter,
        path: '/counter',
        builder: (_, _) => const CounterScreen(),
      ),
      GoRoute(
        name: AppRouterNames.settings,
        path: '/settings',
        builder: (_, _) => const SettingsScreen(),
      ),
    ],
  );
}
