import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/core/theme/colors.dart';

class ThemeCustom {
  final bool isDarkMode;
  final EColorsType selectedColor;

  ThemeCustom({
    this.selectedColor = EColorsType.deepPurpleAccent,
    this.isDarkMode = true,
  });

  /// Returns a [ThemeData] object configured with the selected color scheme
  /// and brightness mode.
  ///
  /// The color scheme is determined by the `selectedColor` from the
  /// `colorsTheme` map, and the brightness is set based on the `isDarkMode`
  /// flag.
  ThemeData get() {
    return ThemeData(
      colorSchemeSeed: colorsTheme[selectedColor]!.color,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }

  /// Creates a copy of the current `ThemeCustom` instance with the option to
  /// override the `isDarkMode` and `selectedColor` properties.
  ///
  /// Returns a new `ThemeCustom` instance with updated properties.
  ThemeCustom copyWith({bool? isDarkMode, EColorsType? selectedColor}) {
    return ThemeCustom(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }
}
