import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';

class WDivider extends StatelessWidget {
  final Color? color;
  const WDivider({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: context.theme.dividerColor,
    );
  }
}
