import 'package:flutter_application_1/core/theme/dark/widget_theme/button_theme_data.dart';
import 'package:flutter_application_1/core/theme/dark/widget_theme/app_bar_theme_data.dart';
import 'package:flutter_application_1/core/theme/dark/widget_theme/check_box_theme_data.dart';
import 'package:flutter_application_1/core/theme/dark/widget_theme/data_table_theme_data.dart';
import 'package:flutter_application_1/core/theme/dark/widget_theme/input_decoration_theme.dart';
import 'package:flutter_application_1/core/theme/dark/widget_theme/scroll_bar_theme_data.dart';
import 'package:flutter/material.dart';

import '../../colors/app_colors.dart';
import '../../helpers/constants.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: AppConstants.cairoFont,
  primaryColor: AppColors.whiteColor,
  scaffoldBackgroundColor: AppColors.blackColor,
  iconTheme: const IconThemeData(color: AppColors.blackColor),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 30, color: AppColors.whiteColor),
    bodyMedium: TextStyle(fontSize: 24, color: AppColors.whiteColor),
    bodySmall: TextStyle(fontSize: 18, color: AppColors.whiteColor, fontWeight: FontWeight.bold),
    //
    titleLarge: TextStyle(fontSize: 26, color: AppColors.whiteColor),
    titleMedium: TextStyle(fontSize: 20, color: AppColors.whiteColor),
    titleSmall: TextStyle(fontSize: 14, color: AppColors.whiteColor),
    //
    displayLarge: TextStyle(fontSize: 22, color: AppColors.whiteColor),
    displayMedium: TextStyle(fontSize: 16, color: AppColors.whiteColor),
    displaySmall: TextStyle(fontSize: 10, color: AppColors.whiteColor),
    //
    labelLarge: TextStyle(fontSize: 18, color: AppColors.whiteColor),
    labelMedium: TextStyle(fontSize: 12, color: AppColors.whiteColor),
    labelSmall: TextStyle(fontSize: 6, color: AppColors.whiteColor),
  ),
  elevatedButtonTheme: elevatedButtonDarkThemeData,
  textButtonTheme: textButtonDarkThemeData,
  outlinedButtonTheme: outlinedButtonDarkTheme(),
  inputDecorationTheme: inputDecorationDarkTheme,
  checkboxTheme: checkboxDarkThemeData.copyWith(
    side: const BorderSide(color: AppColors.blackColor40),
  ),
  appBarTheme: appBarDarkTheme,
  scrollbarTheme: scrollbarDarkThemeData,
  dataTableTheme: dataTableDarkThemeData,
);
