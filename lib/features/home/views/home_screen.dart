import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:conversational_english/core/widgets/scrollable_positioned_list/src/item_positions_listener.dart';
import 'package:conversational_english/core/widgets/scrollable_positioned_list/src/scrollable_positioned_list.dart';
import 'package:conversational_english/features/headers/views/header_screen.dart';
import 'package:conversational_english/features/home/controller/home_controller.dart';
import 'package:conversational_english/features/home/models/top_bar_model.dart';
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
  late final ItemScrollController itemScrollController = ItemScrollController();
  late final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  // CollectionReference reference = FirebaseFirestore.instance.collection("cvlink");
  @override
  void initState() {
    super.initState();
    itemPositionsListener.itemPositions.addListener(() {
      cHome.getCurrentIndex(inde: itemPositionsListener.itemPositions.value.first.index);

      cHome.gethoverbooleancategory(
          hoverCurrentIndex: itemPositionsListener.itemPositions.value.first.index, values: true);
      if (itemPositionsListener.itemPositions.value.last.itemLeadingEdge.isNegative) {
        cHome.gettinglastIndexofhomeitem(
          value: true,
        );
      } else {
        cHome.gettinglastIndexofhomeitem(
          value: false,
        );
      }
    });
  }

  List<Widget> homewidgetlistsdesktop = [
    WHeaderSection(),
    WHeaderSection(),
    WHeaderSection(),
    AboutCourseSection(),
    CourseProgramSection(),
    CourseBenefitsSection(),
    CourseInstructorsSection(),
    StudentReviewsSection(),
    PricingSection(),
    FAQSection(),
    FinalCTASection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D2B41),
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
                        itemScrollCon: itemScrollController,
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
              child: ScrollablePositionedList.builder(
                physics: const ScrollPhysics(),
                itemCount: homewidgetlistsdesktop.length,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
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

// Placeholder widgets for remaining sections
class AboutCourseSection extends StatelessWidget {
  const AboutCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("About the Course"),
      ],
    );
  }
}

class CourseProgramSection extends StatelessWidget {
  const CourseProgramSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CourseBenefitsSection extends StatelessWidget {
  const CourseBenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CourseInstructorsSection extends StatelessWidget {
  const CourseInstructorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StudentReviewsSection extends StatelessWidget {
  const StudentReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
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
