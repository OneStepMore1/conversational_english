import 'package:conversational_english/core/widgets/buttons/primary_button.dart';
import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHeaderSection extends StatelessWidget {
  const WHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // gapY(PTheme.longGapY),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONVERSATIONAL ENGLISH \nFROM SCRATCH',
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: PTheme.fontSizeXL,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Start speaking English in just 4 months!',
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: PTheme.fontSizeL,
                    ),
                    textAlign: TextAlign.center,
                  ).gapLY,
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    height: Responsive.isDesktop() ? 350.h : 100.h,
                    width: Responsive.isDesktop() ? 450.w : 100.w,
                    Assets.images.groupBg.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          WPrimaryButton(
            height: 100.h,
            width: Responsive.isDesktop() ? 300.w : 100,
            text: "Enroll in the Course",
          ),
          gapY(100),
        ],
      ),
    );
  }
}
