import 'package:conversational_english/core/widgets/wcard.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop() ? MediaQuery.of(context).size.width * 0.19 : 0,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context: context)
                  ? 1
                  : Responsive.isTablet(context: context)
                      ? 2
                      : 2,
              // crossAxisSpacing: setSizes(context, 40, 16, 10, false, true),
              // mainAxisSpacing: setSizes(context, 40, 16, 10, false, false),
              crossAxisSpacing: PTheme.spaceX,
              mainAxisSpacing: PTheme.spaceY,
              childAspectRatio: 1.6,
            ),
            itemCount: _courseSections.length,
            itemBuilder: (context, index) {
              final benefit = _courseSections[index];
              return WCard(
                icon: benefit['icon'],
                title: benefit['title'],
                description: benefit['details'],
              );
            },
          ),
        ),
      ],
    );
  }
}
