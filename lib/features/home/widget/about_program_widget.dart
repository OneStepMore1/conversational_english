import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WAboutCourseSection extends StatelessWidget {
  const WAboutCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapY(PTheme.shortGapY),
        Align(
          alignment: Alignment.center,
          child: Text(
            "About This Course",
            style: context.theme.textTheme.bodyLarge?.copyWith(
              fontSize: PTheme.fontSizeXL,
            ),
          ).gapLY,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This course will help you overcome the language barrier and start communicating confidently in English",
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: PTheme.fontSizeX,
                    ),
                  ).gapY,
                  Text(
                    "Brief Course Goals",
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: PTheme.fontSizeX,
                    ),
                  ).gapY,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• Learn to speak English without fear",
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: PTheme.fontSizeX,
                        ),
                      ),
                      Text(
                        "• Master the basics of grammar and pronunciation",
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: PTheme.fontSizeX,
                        ),
                      ),
                      Text(
                        "• Learn to speak English without fear",
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: PTheme.fontSizeX,
                        ),
                      ),
                      Text(
                        "• Build confidence in real communication situations",
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: PTheme.fontSizeX,
                        ),
                      ).gapY,
                      Text(
                        "Learn More About the Program",
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 20.sp,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                    height: Responsive.isDesktop() ? 450.h : 100.h,
                    width: Responsive.isDesktop() ? 450.w : 100.w,
                    Assets.logo.withHeadset),
              ),
            )
          ],
        ),
      ],
    );
  }
}
