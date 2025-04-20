import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/core/theme/colors.dart';
import 'package:flutter_riverpod_app/core/theme/providers/theme_notifier_provider.dart';
import 'package:flutter_riverpod_app/presentation/shared/widgets/drawer/drawer.dart';

/// A screen that displays the settings of the application, allowing users to
/// view and select different color themes.
///
/// This widget is a [ConsumerWidget] that uses Riverpod for state management.
/// It builds a [Scaffold] with an [AppBar] and a custom [DrawerCustom].
/// The body contains a list of available color themes, each represented by a
/// [ListTile] with a [CircleAvatar] showing the color and a [Text] displaying
/// the theme name. Tapping a list item updates the selected color theme using
/// a Riverpod provider.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final entriesColorsTheme = colorsTheme.entries.toList();
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    /// Returns a string indicating whether the given color type is the currently
    /// selected theme.
    ///
    /// If [colorType] matches the [selectedColor], returns "✅".
    /// Otherwise, returns an empty string.
    String getColorCurrentTheme(EColorsType colorType) {
      return colorType == selectedColor ? "✅" : "";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: colorScheme.onPrimary,
      ),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 8.0,
                  left: 16.0,
                ),
                child: Text("Palette Colors", style: TextStyle(fontSize: 20.0)),
              ),
              Divider(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: colorsTheme.length,
                itemBuilder: (_, int index) {
                  final entryColorTheme = entriesColorsTheme[index];
                  final key = entryColorTheme.key;
                  final value = entryColorTheme.value;

                  return ListTile(
                    title: Text("${value.name} ${getColorCurrentTheme(key)}"),
                    leading: CircleAvatar(
                      backgroundColor: value.color,
                      radius: 10,
                    ),
                    onTap:
                        () => ref
                            .read(themeNotifierProvider.notifier)
                            .changeColorPalette(key),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
