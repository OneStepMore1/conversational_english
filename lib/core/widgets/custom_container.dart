import 'package:flutter/material.dart';
import '../../util/constants/dimension_theme.dart';
import '../../util/extensions/extension.dart';

class WCustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? width;
  final Function()? onTap;
  final Color? borderColor;
  final double? verticalPadding, horizontalPadding, borderRadius;
  const WCustomContainer({
    super.key,
    this.child,
    this.color,
    this.width,
    this.onTap,
    this.verticalPadding,
    this.horizontalPadding,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? PTheme.paddingY,
          horizontal: horizontalPadding ?? PTheme.paddingX,
        ),
        decoration: BoxDecoration(
          color: color ?? context.theme.primaryColor,
          border: Border.all(
            color: borderColor ?? context.theme.colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(
            borderRadius ?? PTheme.boxRadius,
          ),
        ),
        child: child,
      ),
    );
  }
}
