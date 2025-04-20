import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A provider that manages the state of the dark mode setting.
/// 
/// This `StateProvider` holds a boolean value indicating whether
/// dark mode is enabled (`true`) or disabled (`false`). The initial
/// state is set to `true`, meaning dark mode is off by default.
final darkModeProvider = StateProvider<bool>((ref) => true);