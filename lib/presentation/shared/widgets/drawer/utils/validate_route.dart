import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Validates and navigates between routes in a Flutter application.
///
/// This function checks if the route clicked by the user is the same as the
/// current route. If they are the same, it closes the drawer. Otherwise, it
/// navigates to the clicked route.
///
/// Parameters:
/// - `context`: The BuildContext of the current widget.
/// - `currentRouteName`: The name of the current route.
/// - `routeNameClicked`: The name of the route that was clicked.
void validateRoute(
  BuildContext context,
  String currentRouteName,
  String routeNameClicked,
) {
  if (currentRouteName == routeNameClicked) {
    context.pop();
    return;
  }

  context.goNamed(routeNameClicked);
}
