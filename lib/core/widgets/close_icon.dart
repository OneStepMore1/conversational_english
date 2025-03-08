import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/extensions/extension.dart';
import 'custom_container.dart';

class WCloseIcon extends StatelessWidget {
  const WCloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WCustomContainer(
      onTap: () => Navigator.pop(context),
      color: context.theme.cardColor.withValues(alpha: 0.1),
      verticalPadding: 6.h,
      horizontalPadding: 6.w,
      child: const Icon(Icons.close),
    );
  }
}
