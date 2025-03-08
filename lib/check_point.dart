import 'package:conversational_english/util/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:power_state/power_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/controllers/route_controller.dart';
import 'core/controllers/theme_controller.dart';
import 'features/initialization/not_found_screen.dart';
import 'responsive_widget.dart';
import 'util/services/navigation_service.dart';
import 'util/services/shared_preference_service.dart';

class SCheckPoint extends StatefulWidget {
  const SCheckPoint({super.key});
  @override
  State<SCheckPoint> createState() => _SCheckPointState();
}

class _SCheckPointState extends State<SCheckPoint> {
  final CTheme themeController = PowerVault.put(CTheme());
  @override
  void initState() {
    super.initState();
    SharedPrefService.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    return PowerBuilder<CTheme>(
      builder: (_) {
        return ScreenUtilInit(
          designSize: Responsive.isMobile(context: context)
              ? const Size(360, 690) // Mobile size
              : Responsive.isTablet(context: context)
                  ? const Size(768, 1024) // Tablet size
                  : const Size(1440, 1024), // Web size
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigationService.key,
              theme: themeController.currentTheme,
              darkTheme: themeController.currentTheme,
              initialRoute: PRoutes.splashScreen,
              routes: RouteController.routes,
              onUnknownRoute: (settings) {
                return MaterialPageRoute(builder: (context) => const NotFoundPage());
              },
            );
          },
        );
      },
    );
  }
}
