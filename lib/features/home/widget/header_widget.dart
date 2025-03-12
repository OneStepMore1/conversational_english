import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:conversational_english/core/widgets/buttons/primary_button.dart';
import 'package:conversational_english/gen/assets.gen.dart';
import 'package:conversational_english/responsive_widget.dart';
import 'package:conversational_english/util/constants/dimension_theme.dart';
import 'package:conversational_english/util/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHeaderSection extends StatefulWidget {
  const WHeaderSection({super.key});

  @override
  State<WHeaderSection> createState() => _WHeaderSectionState();
}

class _WHeaderSectionState extends State<WHeaderSection> {
  AnimatedTextController? myAnimatedTextController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        height: Responsive.isDesktop() ? 350.h : 100.h,
                        width: Responsive.isDesktop() ? 450.w : 100.w,
                        Assets.images.groupBg.path,
                        fit: BoxFit.cover,
                      ).gapLY,
                    ),
                    AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Start speaking English!\nEnroll in the course and take your first step today.',
                            textAlign: TextAlign.center,
                            textStyle: context.theme.textTheme.bodyLarge?.copyWith(
                              fontSize: PTheme.fontSizeX,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                        controller: myAnimatedTextController),
                    // Text(
                    //   "Start speaking English!\nEnroll in the course and take your first step today.",
                    //   textAlign: TextAlign.center,
                    //   style: context.theme.textTheme.bodyLarge?.copyWith(
                    //     fontSize: PTheme.fontSizeX,
                    //   ),
                    // )
                    //
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CONVERSATIONAL ENGLISH \nFROM SCRATCH',
                      textAlign: TextAlign.start,
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: PTheme.fontSizeXL,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Start speaking English in just 4 months!',
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: PTheme.fontSizeL,
                      ),
                      textAlign: TextAlign.center,
                    ).gapLY,
                    WPrimaryButton(
                      height: 100.h,
                      width: Responsive.isDesktop() ? 300.w : 100,
                      text: "Enroll in the Course",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
