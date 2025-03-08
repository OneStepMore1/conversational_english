import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:conversational_english/util/constants/keys.dart';
import 'package:conversational_english/util/services/navigation_service.dart';
import 'package:conversational_english/util/services/shared_preference_service.dart';
import 'package:power_state/power_state.dart';
import '../../util/constants/routes.dart';

class CCheckPoint {
  initilization() async {
    Future.delayed(
      const Duration(milliseconds: 500),
      () async {
        final CTheme themeController = PowerVault.find();
        SharedPrefService.instance
            .getInt(PKeys.themeIndex)
            .then((int? value) => themeController.updateTheme(value ?? 0));
        await PRoutes.home.pushNamedAndRemoveUntil();
      },
    );
  }
}
