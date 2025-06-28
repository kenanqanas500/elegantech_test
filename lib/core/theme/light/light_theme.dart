import 'package:flutter_application_1/core/theme/light/widget_theme/button_theme_data.dart';
import 'package:flutter_application_1/core/theme/light/widget_theme/check_box_theme_data.dart';
import 'package:flutter_application_1/core/theme/light/widget_theme/data_table_theme_data.dart';
import 'package:flutter_application_1/core/theme/light/widget_theme/input_decoration_theme.dart';
import 'package:flutter_application_1/core/theme/light/widget_theme/radio_light_theme_data.dart';
import 'package:flutter_application_1/core/theme/light/widget_theme/scroll_bar_theme_data.dart';
import 'package:flutter/material.dart';

import '../../colors/app_colors.dart';
import '../../helpers/constants.dart';
import 'widget_theme/app_bar_theme_data.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: AppConstants.cairoFont,
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.scaffoldColor,
  iconTheme: const IconThemeData(color: AppColors.blackColor),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 30, color: AppColors.blackColor),
    bodyMedium: TextStyle(fontSize: 24, color: AppColors.blackColor),
    bodySmall: TextStyle(fontSize: 18, color: AppColors.blackColor, fontWeight: FontWeight.bold),
    //
    titleLarge:
        TextStyle(fontSize: 26, color: AppColors.blackColor, fontWeight: FontWeight.w400, letterSpacing: 2),
    titleMedium: TextStyle(fontSize: 20, color: AppColors.blackColor),
    titleSmall: TextStyle(fontSize: 14, color: AppColors.blackColor),
    //
    displayLarge: TextStyle(fontSize: 22, color: AppColors.blackColor),
    displayMedium: TextStyle(fontSize: 16, color: AppColors.blackColor),
    displaySmall: TextStyle(fontSize: 10, color: AppColors.blackColor),
    // for hints inside fields
    labelLarge: TextStyle(fontSize: 18, color: AppColors.blackColor),
    labelMedium: TextStyle(fontSize: 12, color: AppColors.blackColor),
    labelSmall: TextStyle(fontSize: 6, color: AppColors.blackColor),
  ),
  elevatedButtonTheme: elevatedButtonThemeData,
  textButtonTheme: textButtonThemeData,
  radioTheme: RadioLightThemeData,
  outlinedButtonTheme: outlinedButtonTheme(),
  indicatorColor: AppColors.primaryColor,
  inputDecorationTheme: lightInputDecorationTheme,
  checkboxTheme: checkboxThemeData.copyWith(
    side: const BorderSide(color: AppColors.blackColor40),
  ),
  appBarTheme: appBarLightTheme,
  scrollbarTheme: scrollbarThemeData,
  dataTableTheme: dataTableLightThemeData,
);
