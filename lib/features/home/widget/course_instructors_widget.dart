import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WCourseInstructorsSection extends StatelessWidget {
  const WCourseInstructorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapY(PTheme.shortGapY),
        Text(
          'Meet Your Instructors',
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL),
        ).gapLY,
        SizedBox(
          height: 700.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              final instructor = instructors[index];
              return _buildInstructorCard(instructor, index, context);
            }),
          ),
        )
      ],
    );
  }

  Widget _buildInstructorCard(Map<String, dynamic> instructor, int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PTheme.spaceX),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: index == 0
            ? MainAxisAlignment.end
            : index == 1
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
        children: [
          Image.asset(
            height: 250.h,
            width: 300.w,
            instructor['image'],
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  instructor['name'],
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeX),
                ),
                Text(
                  instructor['specialization'],
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  instructor['experience'],
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> instructors = [
  {
    'name': 'Ekaterina',
    'specialization': 'Conversational English Teacher',
    'experience': '8+ years of experience',
    'image': Assets.images.teacher1.path,
    'icon': Icons.chat,
  },
  {
    'name': 'Anna',
    'specialization': 'Phonetics & Pronunciation Expert',
    'experience': '6+ years in phonetics coaching',
    'image': Assets.images.teacher2.path,
    'icon': Icons.record_voice_over,
  },
  {
    'name': 'Michael',
    'specialization': 'Planning & Strategy Expert',
    'experience': '5+ years in personalized learning',
    'image': Assets.images.teacher3.path,
    'icon': Icons.lightbulb,
  },
];
