import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/dimension_theme.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }
}

extension PaddingExtension on Widget {
  Widget get paddingAll {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PTheme.paddingX, vertical: PTheme.paddingY),
      child: this,
    );
  }
}

extension GapYExtension on Widget {
  Widget get gapY {
    return Padding(
      padding: EdgeInsets.only(bottom: PTheme.spaceY),
      child: this,
    );
  }
}

extension GapXExtension on Widget {
  Widget get gapX {
    return Padding(
      padding: EdgeInsets.only(right: PTheme.spaceX),
      child: this,
    );
  }
}

extension GapLongYExtension on Widget {
  Widget get gapLY {
    return Padding(
      padding: EdgeInsets.only(bottom: PTheme.spaceLY),
      child: this,
    );
  }
}

Widget gapY(double pt) {
  return SizedBox(
    height: pt.h,
  );
}

Widget gapX(double pt) {
  return SizedBox(
    width: pt.w,
  );
}
