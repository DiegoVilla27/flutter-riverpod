import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/core/theme/colors.dart';

/// A custom theme class that provides a `ThemeData` object based on the
/// selected color and dark mode preference.
///
/// The `ThemeCustom` class allows configuration of the application's theme
/// by specifying a color from `EColorsType` and a boolean for dark mode.
/// The `get` method returns a `ThemeData` object with the specified color
/// and brightness settings.
///
/// Properties:
/// - `isDarkMode`: A boolean indicating whether dark mode is enabled.
/// - `selectedColor`: An `EColorsType` value representing the selected color.
///
/// Methods:
/// - `get()`: Returns a `ThemeData` object configured with the selected
///   color and brightness.
class ThemeCustom {
  final bool isDarkMode;
  final EColorsType selectedColor;

  ThemeCustom({
    this.selectedColor = EColorsType.deepPurpleAccent,
    this.isDarkMode = false,
  });

  ThemeData get() {
    return ThemeData(
      colorSchemeSeed: colorsTheme[selectedColor]!.color,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}
