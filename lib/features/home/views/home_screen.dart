import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:conversational_english/features/home/widget/about_program_widget.dart';
import 'package:conversational_english/features/home/widget/benefits_section_widget.dart';
import 'package:conversational_english/features/home/widget/course_instructors_widget.dart';
import 'package:conversational_english/features/home/widget/header_widget.dart';
import 'package:conversational_english/features/home/controller/home_controller.dart';
import 'package:conversational_english/features/home/models/top_bar_model.dart';
import 'package:conversational_english/features/home/widget/program_widget.dart';
import 'package:conversational_english/features/home/widget/student_review_widget.dart';
import 'package:conversational_english/features/home/widget/top_bar_home.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:power_state/power_state.dart';

class SHome extends StatefulWidget {
  const SHome({super.key});

  @override
  State<SHome> createState() => _SHomeState();
}

class _SHomeState extends State<SHome> {
  final CTheme cTheme = PowerVault.find();
  final CHome cHome = PowerVault.put(CHome());
  final ScrollController _scrollController = ScrollController();
  double itemHeight = 100.0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // Get the current scroll position
    double offset = _scrollController.offset;
    // double viewportHeight = _scrollController.position.viewportDimension;

    // Calculate which index is visible
    int firstVisibleIndex = (offset / itemHeight).floor();

    cHome.getCurrentIndex(inde: firstVisibleIndex);
    cHome.gethoverbooleancategory(hoverCurrentIndex: firstVisibleIndex, values: true);

    // Check if user scrolled to the last item
    bool isAtBottom = _scrollController.position.pixels >= _scrollController.position.maxScrollExtent;
    cHome.gettinglastIndexofhomeitem(value: isAtBottom);
  }

  void scrollToIndex(int index) {
    double targetOffset = index * itemHeight;
    _scrollController.animateTo(
      targetOffset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  List<Widget> homewidgetlistsdesktop = [
    WHeaderSection(),
    WAboutCourseSection(),
    WProgramSection(),
    WBenefitsSection(),
    WCourseInstructorsSection(),
    WStudentReviewsSection(),
    PricingSection(),
    FAQSection(),
    FinalCTASection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(
                    homeitems.length,
                    (index) {
                      return TopBar(
                        indexx: index,
                        scrollController: _scrollController,
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
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: homewidgetlistsdesktop.length,
                itemBuilder: (context, index) {
                  return homewidgetlistsdesktop[index];
                },
              ),
            )
          ],
        ).paddingAll,
      ),
    );
  }
}

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FinalCTASection extends StatelessWidget {
  const FinalCTASection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
