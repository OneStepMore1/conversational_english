import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/constants/dimension_theme.dart';
import '../../../util/extensions/extension.dart';
import '../buttons/secondary_button.dart';

class WError extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const WError({
    super.key,
    this.message = "An error occurred",
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.echologo,
            height: 200.h,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.displaySmall,
          ),
          if (onRetry != null) ...[
            gapY(10),
            WSecondaryButton(width: PTheme.imageDefaultX, text: "Retry", onTap: onRetry),
          ],
        ],
      ),
    );
  }
}
