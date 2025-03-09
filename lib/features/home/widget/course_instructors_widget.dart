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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: instructors.length,
          itemBuilder: (context, index) {
            final instructor = instructors[index];
            return _buildInstructorCard(instructor);
          },
        ),
        gapY(PTheme.longGapY),
      ],
    );
  }

  Widget _buildInstructorCard(Map<String, dynamic> instructor) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      elevation: 5,
      margin: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage(instructor['image']),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    instructor['name'],
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(instructor['icon'], color: Colors.yellow, size: 18.sp),
                      SizedBox(width: 5.w),
                      Text(
                        instructor['specialization'],
                        style: TextStyle(fontSize: 14.sp, color: Colors.white70),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    instructor['experience'],
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> instructors = [
  {
    'name': 'Ekaterina',
    'specialization': 'Conversational English Teacher',
    'experience': '8+ years of experience',
    'image': Assets.images.group.path,
    'icon': Icons.chat,
  },
  {
    'name': 'Anna',
    'specialization': 'Phonetics & Pronunciation Expert',
    'experience': '6+ years in phonetics coaching',
    'image': Assets.images.group.path,
    'icon': Icons.record_voice_over,
  },
  {
    'name': 'Michael',
    'specialization': 'Planning & Strategy Expert',
    'experience': '5+ years in personalized learning',
    'image': Assets.images.group.path,
    'icon': Icons.lightbulb,
  },
];
