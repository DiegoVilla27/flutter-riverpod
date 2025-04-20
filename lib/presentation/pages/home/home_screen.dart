import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/drawer.dart';

/// A stateless widget that represents the home screen of the application.
///
/// This widget builds a `Scaffold` with an `AppBar` and a custom drawer.
/// The `AppBar` displays the title "Home" and uses the primary color from
/// the current theme. The body of the `Scaffold` contains a centered text
/// widget displaying "Body".
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: theme.onPrimary,
      ),
      drawer: DrawerCustom(),
      body: SafeArea(child: Center(child: Text("Body"))),
    );
  }
}
