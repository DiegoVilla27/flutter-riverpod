import 'package:flutter/material.dart';
import 'package:flutter_riverpod/presentation/pages/home/widgets/drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Riverpod"),
        centerTitle: true,
        backgroundColor: theme.onPrimary,
      ),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: Center(child: Text("Body"))
      ),
    );
  }
}