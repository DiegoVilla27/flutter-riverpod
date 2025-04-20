import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A provider that manages the state of an integer counter, initialized to 0.
///
/// This provider uses Riverpod's `StateProvider` to create a piece of state
/// that can be read and modified by widgets or other providers.
final counterProvider = StateProvider<int>((ref) => 0);
