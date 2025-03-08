import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../util/constants/dimension_theme.dart';
import 'primary_button.dart';

class WBottomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool? isDisabled;
  const WBottomButton({super.key, required this.text, this.onTap, this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: PTheme.paddingX,
        vertical: 8.h,
      ),
      child: WPrimaryButton(
        text: text,
        onTap: onTap,
        isDisabled: isDisabled,
      ),
    );
  }
}
