import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  static final currentContext = key.currentContext!;
}

extension Navigation on String {
  Future pushNamed({
    BuildContext? context,
  }) async {
    return await Navigator.pushNamed(
      context ?? NavigationService.key.currentContext!,
      this,
    );
  }

  Future pushReplacementNamed({
    BuildContext? context,
  }) {
    return Navigator.pushReplacementNamed(
      context ?? NavigationService.key.currentContext!,
      this,
    );
  }

  Future pushNamedAndRemoveUntil({
    BuildContext? context,
    bool Function(Route<dynamic>)? predicate,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      context ?? NavigationService.key.currentContext!,
      this,
      predicate ?? (route) => false,
    );
  }

  static void pop({
    BuildContext? context,
    String? msg,
  }) {
    return Navigator.pop(context ?? NavigationService.key.currentContext!, msg);
  }
}
