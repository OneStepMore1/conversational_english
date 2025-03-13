import 'package:conversational_english/core/widgets/buttons/primary_button.dart';
import 'package:conversational_english/core/widgets/buttons/secondary_button.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WPriceSection extends StatefulWidget {
  const WPriceSection({super.key});

  @override
  State<WPriceSection> createState() => _WPriceSectionState();
}

class _WPriceSectionState extends State<WPriceSection> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Course Cost: 40,000 Rubles",
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeXL)),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
              "✔ 20 Live Classes\n✔ Personalized Support\n✔ Course Materials & Exercises\n✔ Access to Q&A Sessions",
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: PTheme.fontSizeX,
              )),
        ).gapLY,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WPrimaryButton(
              height: 100.h,
              width: Responsive.isDesktop() ? 300.w : 100,
              text: "Enroll in the Course",
            ).gapX,
            WSecondaryButton(
              text: "Inquire About Installments",
              height: 100.h,
              width: Responsive.isDesktop() ? 300.w : 100,
            ),
          ],
        ).gapY,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FAQs",
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeL),
            ).gapY,
            Padding(
              padding: EdgeInsets.only(right: Responsive.isDesktop() ? MediaQuery.of(context).size.width * 0.6 : 0),
              child: Column(
                children: List.generate(
                  3,
                  (indexOfFaq) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: PTheme.spaceY),
                      child: Theme(
                        data: ThemeData().copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          collapsedBackgroundColor: context.theme.textTheme.displayLarge?.color,
                          backgroundColor: context.theme.textTheme.displayLarge?.color,
                          title: Text(
                            "about class schedules",
                            style: context.theme.textTheme.bodyLarge,
                          ),
                          children: [
                            Text(
                              "Here is the answer!",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
