import 'package:flutter/material.dart';

import '../../features/home/views/home_screen.dart';
import '../../splash_screen.dart';
import '../../util/constants/routes.dart';

class RouteController {
  static Map<String, Widget Function(BuildContext)> routes = {
    PRoutes.splashScreen: (context) => const SSplash(),
    PRoutes.home: (context) => const SHome(),
    // PRoutes.aboutUs: (context) => const SizedBox(),
    // PRoutes.contactUs: (context) => const SizedBox(),
    // PRoutes.infoWorkPermit: (context) => InfoPage(),
  };
}
