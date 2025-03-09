import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/services/navigation_service.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static bool isMobile({BuildContext? context}) =>
      MediaQuery.of(context ?? NavigationService.currentContext).size.width < 768;

  static bool isTablet({BuildContext? context}) =>
      MediaQuery.of(context ?? NavigationService.currentContext).size.width >= 768 &&
      MediaQuery.of(context ?? NavigationService.currentContext).size.width < 1400;

  static bool isDesktop({BuildContext? context}) =>
      MediaQuery.of(context ?? NavigationService.currentContext).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    // Update PTheme values dynamically based on the context
    PTheme.updateValues(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1400) {
          return desktop;
        } else if (constraints.maxWidth >= 768) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
