import 'package:flutter/material.dart';
import '../../util/services/navigation_service.dart';
import '../widgets/load_and_error/loading_widget.dart';

showLoader() {
  showDialog(
    context: NavigationService.currentContext,
    builder: (_) {
      return const AlertDialog.adaptive(
        content: Wrap(
          children: [
            WOnScreenLoading(),
          ],
        ),
      );
    },
  );
}

hideLoader() {
  Navigation.pop();
}
