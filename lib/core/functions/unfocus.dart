import 'package:flutter/material.dart';
import '../../util/services/navigation_service.dart';

unFocus({BuildContext? context}) {
  final FocusScopeNode currentScope = FocusScope.of(context ?? NavigationService.currentContext);
  if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

unNodeFocus({BuildContext? context, required FocusNode unfocusNode, required FocusNode nextFocusNode}) {
  unfocusNode.unfocus();
  FocusScope.of(context ?? NavigationService.currentContext).requestFocus(nextFocusNode);
}
