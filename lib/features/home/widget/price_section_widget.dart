import 'package:conversational_english/core/widgets/buttons/primary_button.dart';
import 'package:conversational_english/features/home/controller/home_controller.dart';
import 'package:conversational_english/features/home/models/social_model_list.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:power_state/power_state.dart';

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
    final Size size = MediaQuery.of(context).size;
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
            WPrimaryButton(
              height: 100.h,
              color: Colors.red,
              gradientColors: [
                Color(0xFF4A7572),
                Color(0xFF4A7572),
              ],
              width: Responsive.isDesktop() ? 350.w : 100,
              text: "Inquire About Installments",
            ),
            // WButtonWithIcon(
            //   height: 110.h,
            //   width: Responsive.isDesktop() ? 300.w : 100,
            //   icon: Icons.queue_play_next_rounded,
            //   title: "Inquire About Installments",
            //   // text: "Inquire About Installments",
            //   // height: 100.h,
            //   // width: Responsive.isDesktop() ? 300.w : 100,
            // ),
          ],
        ).gapY,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FAQs",
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: PTheme.fontSizeL),
            ).gapY,
            Row(
              children: [
                Expanded(
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
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Social Links",
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: PTheme.fontSizeL,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        socialitems.length,
                        (index) {
                          return PowerBuilder<CHome>(builder: ((homecontroller) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                // horizontal: homecontroller.hoverindexforsocialitems == index &&
                                //         homecontroller.onhoverforsocialitems == true
                                //     ? 18.0
                                //     : 8,
                                horizontal: 18,
                              ),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: socialitems[index].onTap!,
                                    hoverColor: Colors.transparent,
                                    onHover: (value) {
                                      homecontroller.gethoverbooleanforsocial(values: value, hoverCurrentIndex: index);
                                    },
                                    child: Transform.translate(
                                      offset: homecontroller.hoverindexforsocialitems == index &&
                                              homecontroller.onhoverforsocialitems == true
                                          ? const Offset(0, 0)
                                          : const Offset(0, 0),
                                      child: Transform.scale(
                                        scale: homecontroller.hoverindexforsocialitems == index &&
                                                homecontroller.onhoverforsocialitems == true
                                            ? 1.5
                                            : 1,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              socialitems[index].icon!,
                                              height: size.height * 0.05,
                                              width: size.width * 0.028,
                                            ),
                                            Text(
                                              socialitems[index].title ?? "",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }));
                        },
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
