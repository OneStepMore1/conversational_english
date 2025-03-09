import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WStudentReviewsSection extends StatelessWidget {
  const WStudentReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapY(PTheme.longGapY),
        Text(
          'Student Reviews',
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final review = reviews[index];
            return _buildReviewCard(review);
          },
        ),
        gapY(PTheme.longGapY),
      ],
    );
  }

  Widget _buildReviewCard(Map<String, dynamic> review) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      elevation: 4,
      margin: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(review['image']),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    review['name'],
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Icon(Icons.format_quote, color: Colors.blueAccent, size: 32.sp),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              review['review'],
              style: TextStyle(fontSize: 14.sp, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> reviews = [
  {
    'name': 'Emily Johnson',
    'review': 'This course helped me gain confidence in speaking English! The live lessons were super engaging.',
    'image': Assets.images.group.path,
  },
  {
    'name': 'Carlos Ramirez',
    'review': 'Amazing course! The pronunciation tips and daily practice really made a difference for me.',
    'image': Assets.images.group.path,
  },
  {
    'name': 'Aisha Khan',
    'review': 'Before this course, I struggled with conversations. Now, I can express myself fluently!',
    'image': Assets.images.group.path,
  },
];
