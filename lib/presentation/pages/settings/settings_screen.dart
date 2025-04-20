import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/drawer.dart';

/// A stateless widget that represents the settings screen of the application.
///
/// This screen includes an app bar with a centered title and a custom drawer.
/// The body of the screen is wrapped in a SafeArea widget and contains a
/// centered text widget. The app bar's background color is derived from the
/// current theme's color scheme.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: theme.onPrimary,
      ),
      drawer: DrawerCustom(),
      body: SafeArea(child: Center(child: Text("Body"))),
    );
  }
}
