import 'package:conversational_english/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class PTheme {
  // Declare variables that will be used dynamically
  static double paddingX = 16.w;
  static double paddingY = 12.h;
  static double boxRadius = 8.r;
  static double spaceX = 8.w;
  static double spaceY = 8.h;
  static double buttonHeight = 45.h;
  static double imageDefaultX = 90.w;
  static double imageDefaultY = 92.h;
  static double spaceLY = 20.h;
  static double fieldHeight = 46.h;
  static double boarderRadius = 8.w;
  static double fontSizeX = 14.sp;
  static double fontSizeL = 16.sp;
  static double fontSizeXL = 20.sp;
  static double longGapY = 60.sp;
  static double shortGapY = 40.sp;

  // Method to update PTheme values based on the context
  static void updateValues(BuildContext context) {
    if (Responsive.isDesktop(context: context)) {
      paddingX = 24.w;
      paddingY = 24.h;
      boxRadius = 12.r;
      spaceX = 12.w;
      spaceY = 12.h;
      buttonHeight = 54.h;
      imageDefaultX = 135.w;
      imageDefaultY = 138.h;
      spaceLY = 90.h;
      fieldHeight = 55.h;
      boarderRadius = 12.w;
      fontSizeX = 21.sp;
      fontSizeL = 35.sp;
      fontSizeXL = 60.sp;
      longGapY = 250.sp;
    } else if (Responsive.isTablet(context: context)) {
      paddingX = 18.w;
      paddingY = 18.h;
      boxRadius = 10.r;
      spaceX = 10.w;
      spaceY = 10.h;
      buttonHeight = 50.h;
      imageDefaultX = 108.w;
      imageDefaultY = 110.h;
      spaceLY = 54.h;
      fieldHeight = 50.h;
      boarderRadius = 10.w;
      fontSizeX = 17.sp;
      fontSizeL = 30.sp;
      fontSizeXL = 40.sp;
      longGapY = 200.sp;
    } else {
      paddingX = 16.w;
      paddingY = 12.h;
      boxRadius = 8.r;
      spaceX = 8.w;
      spaceY = 8.h;
      buttonHeight = 45.h;
      imageDefaultX = 90.w;
      imageDefaultY = 92.h;
      spaceLY = 20.h;
      fieldHeight = 46.h;
      boarderRadius = 8.w;
      fontSizeX = 14.sp;
      fontSizeL = 16.sp;
      fontSizeXL = 20.sp;
      longGapY = 60.sp;
    }
  }
}
