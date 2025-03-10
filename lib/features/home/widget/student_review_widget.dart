import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WStudentReviewsSection extends StatelessWidget {
  WStudentReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapY(PTheme.longGapY),
        Text(
          'Student Reviews',
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL),
        ),
        // ListView.builder(
        //   shrinkWrap: true,
        //   physics: const NeverScrollableScrollPhysics(),
        //   itemCount: reviews.length,
        //   itemBuilder: (context, index) {
        //     final review = reviews[index];
        //     return _buildReviewCard(review);
        //   },
        // ),
        Wrap(
          children: List.generate(
            3,
            (index) {
              final review = reviews[index];
              return _buildReviewCard(review);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReviewCard(Map<String, dynamic> review) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PTheme.spaceX),
      child: SizedBox(
        width: 300.w,
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.network(
                    review['image'],
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  review['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8.0),
                Text(
                  '${2} ⭐',
                  style: TextStyle(color: Colors.amber),
                ),
                const SizedBox(height: 8.0),
                Text(review['review']),
                const SizedBox(height: 8.0),
                Text(
                  DateTime.now().day.toString(),
                  // '${review.date.day}/${review.date.month}/${review.date.year}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
}
