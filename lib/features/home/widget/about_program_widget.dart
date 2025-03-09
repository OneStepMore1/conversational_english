import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WAboutCourseSection extends StatelessWidget {
  const WAboutCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapY(150),
        Align(
          alignment: Alignment.center,
          child: Text(
            "About This Course",
            style: context.theme.textTheme.bodyLarge?.copyWith(
              fontSize: 40.sp,
            ),
          ),
        ),
        Text(
          "This course will help you overcome the language barrier and start communicating confidently in English",
          style: context.theme.textTheme.bodyLarge?.copyWith(
            fontSize: 30.sp,
          ),
        ).gapLY,
        Text(
          "Brief Course Goals",
          style: context.theme.textTheme.bodyLarge?.copyWith(
            fontSize: 40.sp,
          ),
        ).gapY,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "• Learn to speak English without fear",
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 40.sp,
              ),
            ),
            Text(
              "• Master the basics of grammar and pronunciation",
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 40.sp,
              ),
            ),
            Text(
              "• Learn to speak English without fear",
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 40.sp,
              ),
            ),
            Text(
              "• Build confidence in real communication situations",
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 40.sp,
              ),
            ),
          ],
        ),
        gapY(150),
      ],
    );
  }
}
