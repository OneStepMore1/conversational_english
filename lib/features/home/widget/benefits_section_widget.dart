import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WBenefitsSection extends StatelessWidget {
  const WBenefitsSection({super.key});

  final List<Map<String, dynamic>> _benefits = const [
    {
      'icon': Icons.timer_rounded,
      'title': '4-Month Results',
      'subtitle': 'Intensive learning approach for quick progress.',
      'color': Colors.blueAccent,
    },
    {
      'icon': Icons.person_pin_circle_rounded,
      'title': 'Personalized Plan',
      'subtitle': 'Tailored support for your learning goals.',
      'color': Colors.green,
    },
    {
      'icon': Icons.video_call_rounded,
      'title': 'One-on-One Lessons',
      'subtitle': 'Dedicated instructor sessions for improvement.',
      'color': Colors.orange,
    },
    {
      'icon': Icons.devices_rounded,
      'title': 'Interactive Platform',
      'subtitle': 'Learn anytime with our digital tools.',
      'color': Colors.purple,
    },
    {
      'icon': Icons.chat_bubble_outline_rounded,
      'title': 'Daily Chat Practice',
      'subtitle': 'Engage with instructors and students.',
      'color': Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapY(PTheme.shortGapY),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Why Our Course is Right for You?',
            style: context.theme.textTheme.bodyLarge?.copyWith(
              fontSize: PTheme.fontSizeXL,
            ),
          ).gapLY,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _benefits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 2,
          ),
          itemBuilder: (context, index) {
            final benefit = _benefits[index];
            return _buildBenefitCard(benefit);
          },
        ),
      ],
    );
  }

  Widget _buildBenefitCard(Map<String, dynamic> benefit) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(
            colors: [benefit['color'].withOpacity(0.8), benefit['color'].withOpacity(0.4)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22.r,
              child: Icon(benefit['icon'], color: benefit['color'], size: 28.sp),
            ),
            SizedBox(height: 10.h),
            Text(
              benefit['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 5.h),
            Text(
              benefit['subtitle'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
