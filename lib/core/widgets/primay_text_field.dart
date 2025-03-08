import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/constants/dimension_theme.dart';
import '../../util/extensions/extension.dart';

class WTextField extends StatefulWidget {
  final double? width;
  final String? label;
  final TextStyle? labelStyle;
  final String? hintText;
  final bool enabled;
  final bool readOnly;
  final int? maxLength;
  final int? minLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final List<FilteringTextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixWidget;
  final bool obsecureText;
  final String? prefixIconPath;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onChanged;
  const WTextField(
      {super.key,
      this.width,
      this.label,
      this.labelStyle,
      this.hintText,
      this.maxLength,
      this.minLength,
      this.maxLines,
      this.keyboardType,
      required this.controller,
      this.formatter,
      this.readOnly = false,
      this.onFieldSubmitted,
      this.enabled = true,
      this.suffixWidget,
      this.validator,
      this.prefixIconPath,
      this.suffixIcon,
      this.onTap,
      this.onChanged,
      this.focusNode})
      : obsecureText = false;

  const WTextField.obsecureText({
    super.key,
    this.width,
    this.label,
    this.labelStyle,
    this.hintText,
    this.maxLength,
    this.minLength,
    this.maxLines,
    this.keyboardType,
    required this.controller,
    this.formatter,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.enabled = true,
    this.suffixWidget,
    this.validator,
    this.prefixIconPath,
    this.suffixIcon,
    this.onTap,
    this.onChanged,
    this.focusNode,
  }) : obsecureText = true;

  @override
  State<WTextField> createState() => _WTextFieldState();
}

class _WTextFieldState extends State<WTextField> {
  late final ValueNotifier<bool> obsecureText = ValueNotifier<bool>(widget.obsecureText);

  late final TextEditingController _internalController;
  late final bool _isInternalController;

  @override
  void initState() {
    super.initState();
    // If controller is not provided, create an internal one
    _isInternalController = widget.controller == null;
    _internalController = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    // Only dispose if it's an internally created controller
    if (_isInternalController) {
      _internalController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: widget.labelStyle,
          ),
        gapY(5),
        ValueListenableBuilder<bool>(
          valueListenable: obsecureText,
          builder: (_, value, __) {
            return SizedBox(
              width: widget.width ?? double.infinity,
              child: TextFormField(
                maxLength: widget.maxLength,
                minLines: widget.minLength,
                maxLines: widget.maxLines ?? 1,
                enabled: widget.enabled,
                validator: widget.validator,
                obscureText: value,
                controller: _internalController,
                readOnly: widget.readOnly,
                onTap: widget.onTap,
                onChanged: widget.onChanged,
                keyboardType: widget.keyboardType,
                focusNode: widget.focusNode,
                onFieldSubmitted: widget.onFieldSubmitted,
                inputFormatters: widget.formatter != null ? widget.formatter! : [],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(PTheme.boarderRadius),
                    ),
                    borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
                  ),
                  hintStyle: TextStyle(
                    color: const Color(0xFFA0A0A0),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  counterText: '',
                  prefixIconConstraints: BoxConstraints(maxHeight: 17.w),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: widget.prefixIconPath == null ? 10.w : 0.0),
                  hintText: widget.hintText ?? (widget.label == null ? "Hint Text" : "Enter ${widget.label}"),
                  prefixIcon: widget.prefixIconPath == null
                      ? null
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(
                            widget.prefixIconPath!,
                            height: 15.w,
                            width: 15.w,
                          ),
                        ),
                  suffixIcon: widget.obsecureText
                      ? InkWell(
                          onTap: () {
                            obsecureText.value = !obsecureText.value;
                          },
                          child: Icon(obsecureText.value ? Icons.visibility_off : Icons.visibility),
                        )
                      : widget.suffixIcon,
                ),
              ),
            );
          },
        ),
        gapX(10),
      ],
    );
  }
}
