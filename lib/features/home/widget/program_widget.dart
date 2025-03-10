import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WProgramSection extends StatefulWidget {
  const WProgramSection({super.key});

  @override
  State<WProgramSection> createState() => _WProgramSectionState();
}

class _WProgramSectionState extends State<WProgramSection> {
  int selectedTab = 0;

  final List<Map<String, dynamic>> _courseSections = [
    {
      'title': 'Live Lessons',
      'icon': Icons.videocam_rounded,
      'details': 'Join live sessions with instructors to practice real conversations.',
      'color': Colors.blueAccent
    },
    {
      'title': 'Interactive Activities',
      'icon': Icons.school_rounded,
      'details': 'Engage in activities to improve English skills through practice.',
      'color': Colors.green
    },
    {
      'title': 'Webinars & Workshops',
      'icon': Icons.language_rounded,
      'details': 'Special sessions on phonetics, phrasal verbs, and English tenses.',
      'color': Colors.orange
    },
    {
      'title': 'Individual Support',
      'icon': Icons.support_agent_rounded,
      'details': 'One-on-one mastermind sessions, planning, and consultations.',
      'color': Colors.purple
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapY(PTheme.longGapY),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: selectedTab == 0 ? _buildTabView() : _buildExpandableList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabView() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isDesktop() ? MediaQuery.of(context).size.width * 0.12 : 0,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _courseSections.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 2.2,
        ),
        itemBuilder: (context, index) {
          final section = _courseSections[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Center(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: PTheme.spaceX),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    gradient: LinearGradient(
                      colors: [section['color'].withOpacity(0.8), section['color'].withOpacity(0.4)],
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
                        child: Icon(section['icon'], color: section['color'], size: 28.sp),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        section['title'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        section['details'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.sp, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildExpandableList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _courseSections.length,
      itemBuilder: (context, index) {
        final section = _courseSections[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
            child: Theme(
              data: ThemeData().copyWith(
                dividerColor: Colors.transparent, // Remove expansion divider line
                splashColor: Colors.transparent, // Remove tap splash effect
              ),
              child: ExpansionTile(
                leading: Icon(section['icon'], color: section['color']),
                title: Text(
                  section['title'],
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      section['details'],
                      style: TextStyle(fontSize: 14.sp, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
