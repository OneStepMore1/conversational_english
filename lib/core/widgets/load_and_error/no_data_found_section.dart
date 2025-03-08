import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/assets.gen.dart';

class WNoDataFound extends StatelessWidget {
  const WNoDataFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.group.path,
      height: 300.h,
    );
  }
}
