import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';
import '../../../helpers/constants.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(AppConstants.defaultPadding),
    backgroundColor: AppColors.greyColor,
    // foregroundColor: Colors.white,
    // textStyle: TextStyle(color: AppColors.whiteColor),
    // fixedSize: const Size(double.infinity, 100),
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
    ),
  ),
);

final textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: AppColors.whiteColor),
);

OutlinedButtonThemeData outlinedButtonTheme({Color borderColor = AppColors.blackColor10}) {
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
