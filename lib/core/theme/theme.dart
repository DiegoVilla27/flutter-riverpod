import 'package:flutter/material.dart';

/// A custom theme class that provides a dark theme configuration.
///
/// The `ThemeCustom` class contains a method to retrieve a `ThemeData` object
/// with a predefined color scheme and brightness setting. The color scheme is
/// seeded with `Colors.deepPurpleAccent`, and the brightness is set to dark.
class ThemeCustom {
  ThemeData get() {
    return ThemeData(
      colorSchemeSeed: Colors.deepPurpleAccent,
      brightness: Brightness.dark,
    );
  }
}
