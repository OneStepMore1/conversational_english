import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../util/constants/dimension_theme.dart';
import '../../../util/extensions/extension.dart';
import '../../functions/is_null.dart';
import '../../functions/unfocus.dart';

class WPrimaryButton extends StatefulWidget {
  final String? text;
  final void Function()? onTap;
  final double? height;
  final double? width;
  final bool border;
  final Color? color;
  final List<Color>? gradientColors;
  final bool? isDisabled;
  final String? imagePath;
  final bool? isSVG;
  const WPrimaryButton({
    super.key,
    this.text,
    this.onTap,
    this.height,
    this.width,
    this.color,
    this.gradientColors,
    this.isDisabled,
    this.imagePath,
    this.isSVG,
  }) : border = false;
  const WPrimaryButton.border({
    super.key,
    required this.text,
    this.onTap,
    this.height,
    this.width,
    this.color,
    this.gradientColors,
    this.isDisabled,
    this.imagePath,
    this.isSVG,
  }) : border = true;

  @override
  WPrimaryButtonState createState() => WPrimaryButtonState();
}

class WPrimaryButtonState extends State<WPrimaryButton> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: () {
        unFocus();
        widget.onTap?.call();
      },
      child: Container(
        height: widget.height ?? PTheme.fieldHeight,
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(PTheme.boarderRadius),
          border: widget.border
              ? Border.all(
                  color: widget.color ?? context.theme.buttonTheme.colorScheme!.primary,
                )
              : null,
          gradient: widget.border
              ? null
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: widget.gradientColors ??
                      [
                        _isPressed
                            ? context.theme.buttonTheme.colorScheme!.primary
                            : context.theme.buttonTheme.colorScheme!.secondary,
                        _isPressed
                            ? context.theme.buttonTheme.colorScheme!.secondary
                            : context.theme.buttonTheme.colorScheme!.primary,
                      ],
                ),
        ),
        child: isNull(widget.imagePath)
            ? Center(
                child: Text(
                  widget.text ?? "Primary Button",
                  style: TextStyle(
                    color: widget.border
                        ? (widget.color ?? context.theme.buttonTheme.colorScheme!.primary)
                        : context.theme.buttonTheme.colorScheme!.tertiary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      if (!isNull(widget.imagePath))
                        widget.isSVG == true
                            ? SvgPicture.asset(
                                widget.imagePath ?? "",
                                height: 30.h,
                              ).gapX
                            : Image.asset(
                                widget.imagePath ?? "",
                                height: 30.h,
                              ).gapX,
                      Text(
                        widget.text ?? "Primary Button",
                        style: TextStyle(
                          color: widget.border
                              ? (widget.color ?? context.theme.buttonTheme.colorScheme!.primary)
                              : context.theme.buttonTheme.colorScheme!.tertiary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
      ),
    );
  }
}
