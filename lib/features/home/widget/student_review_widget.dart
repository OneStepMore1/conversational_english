import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/util/constants/date_utilities.dart';
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
        gapY(PTheme.shortGapY),
        Text(
          'Student Reviews',
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL),
        ),
        gapY(PTheme.shortGapY),
        gapY(PTheme.shortGapY),
        gapY(PTheme.shortGapY),
        gapY(PTheme.shortGapY),

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
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(
            reviews.length,
            (index) {
              final review = reviews[index];
              return _buildReviewCard(review, context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReviewCard(Map<String, dynamic> review, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: PTheme.spaceX,
        vertical: PTheme.spaceY,
      ),
      child: SizedBox(
        width: 400.w,
        child: Stack(
          clipBehavior: Clip.none, // Ensures nothing gets clipped
          alignment: Alignment.topCenter,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0, bottom: 16.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity, // Forces Row to take full width
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            // Ensures name takes available space
                            child: Text(
                              review['name'],
                              overflow: TextOverflow.ellipsis,
                              style: context.theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: PTheme.fontSizeX,
                              ),
                            ),
                          ),
                          Text(
                            '${2} ⭐',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      PDateUtil.getDate(PDateUtil.dayMonthYear, DateTime.now()),
                      style: context.theme.textTheme.bodyLarge,
                    ).gapY,
                    Text(
                      review['review'],
                      style: context.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20, // Moves image upwards to ensure full visibility
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Background to separate from card
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 8, spreadRadius: 2),
                  ],
                ),
                padding: EdgeInsets.all(4), // Creates a white border effect
                child: ClipOval(
                  child: Image.network(
                    review['image'],
                    width: 60, // Increased size for better overlap
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
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
