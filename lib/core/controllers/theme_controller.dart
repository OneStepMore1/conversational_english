import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:power_state/power_state.dart';
import '../../util/constants/colors.dart';
import '../../util/constants/dimension_theme.dart';
import '../../util/constants/keys.dart';
import '../../util/services/shared_preference_service.dart';
import '../functions/printer.dart';

class CTheme extends PowerController {
  int currentIndex = 0;

  late List<ThemeData> themeList = [_lightTheme, _darkTheme];

  ThemeData get currentTheme => themeList[currentIndex];
  Color backGroundColor = PColors.backGroundColor;

  void updateTheme(int index) async {
    currentIndex = index;
    printer(currentIndex);
    notifyListeners();
    SharedPrefService.instance.setInt(PKeys.themeIndex, index);
  }

  late final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: "Salsa-Regular",
    appBarTheme: const AppBarTheme(backgroundColor: PColors.appBarColor),
    primaryColor: PColors.white,
    dividerColor: Colors.grey[300],
    canvasColor: Colors.black.withValues(alpha: 0.05),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF002E5B),
        secondary: const Color(0xFF3AADE1),
        tertiary: Colors.white,
        shadow: Colors.grey.withValues(alpha: 0.1),
      ),
      highlightColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: PColors.border, // Used this as border color for light theme
    ),
    scaffoldBackgroundColor: Color(0xFFC5D5F2),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
        ),
        backgroundColor: const WidgetStatePropertyAll<Color?>(PColors.secondaryButtonColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      fillColor: Colors.white,
      filled: true,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(PTheme.boarderRadius),
        ),
        borderSide: const BorderSide(color: Color(0xFF8391A1), width: 0.5),
      ),
      hintStyle: TextStyle(
        color: const Color(0xFFA0A0A0),
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: PTheme.fontSizeX,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: Colors.black54,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: const Color(0xFF6F23FD),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  late final ThemeData _darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF0D2B41),
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    dividerColor: Colors.grey[300],
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      contentPadding: EdgeInsets.symmetric(horizontal: PTheme.paddingX),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PTheme.boxRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PTheme.boxRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PTheme.boxRadius),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: Colors.white12,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: const Color(0xFF6F23FD),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF002E5B),
        secondary: const Color(0xFF3AADE1),
        tertiary: Colors.black,
        shadow: Colors.grey.withValues(alpha: 0.1),
      ),
      highlightColor: Colors.black,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color?>(const Color(0xFF6F23FD).withValues(alpha: 0.2)),
      ),
    ),
  );
}
