import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/core/theme/colors.dart';

/// A state provider for managing the selected color theme in the application.
/// 
/// This provider holds an instance of `EColorsType`, initialized to 
/// `EColorsType.deepPurpleAccent`, allowing the app to dynamically change 
/// its color theme based on user interaction or other logic.
final selectedColorThemeProvider = StateProvider<EColorsType>((ref) => EColorsType.deepPurpleAccent);