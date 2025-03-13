import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:conversational_english/features/home/widget/about_program_widget.dart';
import 'package:conversational_english/features/home/widget/benefits_section_widget.dart';
import 'package:conversational_english/features/home/widget/course_instructors_widget.dart';
import 'package:conversational_english/features/home/widget/header_widget.dart';
import 'package:conversational_english/features/home/controller/home_controller.dart';
import 'package:conversational_english/features/home/widget/payment_section_widget.dart';
import 'package:conversational_english/features/home/widget/program_widget.dart';
import 'package:conversational_english/features/home/widget/student_review_widget.dart';
import 'package:conversational_english/features/home/widget/top_bar_home.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:flutter/material.dart';
import 'package:power_state/power_state.dart';

class SHome extends StatefulWidget {
  const SHome({super.key});

  @override
  State<SHome> createState() => _SHomeState();
}

class _SHomeState extends State<SHome> {
  final CHome cHome = PowerVault.put(CHome());
  final CTheme cTheme = PowerVault.find();
  final PageController _pageController = PageController();

  List<Widget> homewidgetlistsdesktop = [
    WHeaderSection(),
    WAboutCourseSection(),
    WProgramSection(),
    WBenefitsSection(),
    WCourseInstructorsSection(),
    WStudentReviewsSection(),
    WPaymentSection(),
  ];

  void scrollToIndex(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: PTheme.paddingX,
              ),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: homewidgetlistsdesktop,
                onPageChanged: (index) {
                  cHome.getCurrentIndex(inde: index);
                },
              ),
            ),
            Positioned(
              top: 5,
              right: 10,
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      homewidgetlistsdesktop.length,
                      (index) {
                        return TopBar(
                          indexx: index,
                          pageController: _pageController, // Pass PageController instead
                        );
                      },
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        if (cTheme.currentIndex == 0) {
                          cTheme.updateTheme(1);
                        } else {
                          cTheme.updateTheme(0);
                        }
                      },
                      icon: const Icon(Icons.dark_mode)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
