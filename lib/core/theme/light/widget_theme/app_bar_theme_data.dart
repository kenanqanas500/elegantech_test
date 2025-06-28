import 'package:flutter_application_1/core/helpers/constants.dart';
import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';

const AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: AppColors.primaryColor,
  centerTitle: true,
  elevation: 0,
  // toolbarHeight: 220,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(
        AppConstants.appBarRadius,
      ),
      bottomRight: Radius.circular(
        AppConstants.appBarRadius,
      ),
    ),
  ),
  iconTheme: IconThemeData(color: AppColors.blackColor),
  // titleTextStyle: TextStyle(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w500,
  //   color: AppColors.blackColor,
  // ),
);
