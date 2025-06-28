import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';
import '../../../helpers/constants.dart';

ElevatedButtonThemeData elevatedButtonDarkThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(AppConstants.defaultPadding),
    backgroundColor: AppColors.primaryColor,
    foregroundColor: Colors.white,
    textStyle: TextStyle(color: AppColors.whiteColor),
    // minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
    ),
  ),
);

final textButtonDarkThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
);

OutlinedButtonThemeData outlinedButtonDarkTheme({Color borderColor = AppColors.blackColor10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      // minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
      ),
    ),
  );
}
