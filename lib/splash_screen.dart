import 'package:conversational_english/util/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/controllers/check_point_controller.dart';
import 'util/extensions/extension.dart';

class SSplash extends StatefulWidget {
  const SSplash({super.key});

  @override
  State<SSplash> createState() => _SSplashState();
}

class _SSplashState extends State<SSplash> {
  @override
  void initState() {
    super.initState();
    final CCheckPoint checkPoint = CCheckPoint();
    checkPoint.initilization();
  }

  @override
  Widget build(BuildContext contextsdsdsadas) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 150.h,
            ).gapLY,
            Text(
              'Conversational English From Scratch',
              textAlign: TextAlign.center,
              style: NavigationService.currentContext.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 7.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
