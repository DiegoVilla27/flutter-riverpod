import 'package:flutter/material.dart';
import 'package:flutter_riverpod/core/theme/theme.dart';
import 'package:flutter_riverpod/presentation/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(_) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Riverpod',
      theme: ThemeCustom().get(),
      home: HomeScreen(),
    );
  }
}
