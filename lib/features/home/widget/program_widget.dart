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
  int _selectedTab = 0;

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
          _buildTabs(),
          SizedBox(height: 20.h),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _selectedTab == 0 ? _buildTabView() : _buildExpandableList(),
          ),
          gapY(PTheme.longGapY),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.all(4.w),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _tabButton('Cards View', 0),
            _tabButton('Expand View', 1),
          ],
        ),
      ),
    );
  }

  Widget _tabButton(String text, int index) {
    return GestureDetector(
      onTap: () => setState(() => _selectedTab = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: _selectedTab == index ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: _selectedTab == index ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildTabView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _courseSections.length,
      itemBuilder: (context, index) {
        final section = _courseSections[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                gradient: LinearGradient(
                  colors: [section['color'].withOpacity(0.8), section['color'].withOpacity(0.4)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(section['icon'], color: section['color']),
                ),
                title: Text(
                  section['title'],
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text(
                  section['details'],
                  style: TextStyle(fontSize: 14.sp, color: Colors.white70),
                ),
              ),
            ),
          ),
        );
      },
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
