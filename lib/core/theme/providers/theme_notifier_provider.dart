import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/core/theme/colors.dart';
import 'package:flutter_riverpod_app/core/theme/theme.dart';

/// Provides a [StateNotifierProvider] for managing theme state using
/// [ThemeNotifier] and [ThemeCustom].
///
/// This provider allows the application to reactively update its theme
/// based on the state managed by [ThemeNotifier].
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeCustom>(
  (ref) => ThemeNotifier(),
);

/// -----------------------------------------------------------///

/// A [StateNotifier] that manages theme-related state changes.
///
/// This class provides methods to toggle dark mode and change the
/// color palette of the theme. It extends [StateNotifier] with a
/// state of type [ThemeCustom].
class ThemeNotifier extends StateNotifier<ThemeCustom> {
  ThemeNotifier() : super(ThemeCustom());

  /// Toggles the dark mode setting in the current state.
  ///
  /// This method updates the state by inverting the current value of
  /// the `isDarkMode` property.
  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  /// Updates the current state with a new color palette.
  ///
  /// This method modifies the `selectedColor` property of the state
  /// by copying the existing state and applying the new color.
  ///
  /// [color] is the new color palette to be set.
  void changeColorPalette(EColorsType color) {
    state = state.copyWith(selectedColor: color);
  }
}
