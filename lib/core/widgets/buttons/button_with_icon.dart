import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../util/extensions/extension.dart';

class WButtonWithIcon extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final IconData? icon;
  final double? height;
  final double? width;
  const WButtonWithIcon({super.key, this.title, this.onPressed, this.icon, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon ?? Icons.edit),
        label: Text(
          title ?? "Button",
          style: context.theme.textTheme.bodyLarge,
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ).gapY,
    );
  }
}
