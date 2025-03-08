import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_container.dart';

class CustomSupportCard extends StatelessWidget {
  final String imagePath;
  final String headerText;
  final String descText;
  const CustomSupportCard({super.key, required this.imagePath, required this.headerText, required this.descText});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return WCustomContainer(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            height: mq.height * 0.05,
            width: mq.width * 0.11,
            decoration: BoxDecoration(
              color: context.theme.textTheme.bodyLarge?.color?.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              color: context.theme.textTheme.bodyLarge?.color,
            ),
          ).gapX,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  headerText,
                  style: context.theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                ),
                Text(
                  descText,
                  style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
