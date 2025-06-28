import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';

const AppBarTheme appBarDarkTheme = AppBarTheme(
  backgroundColor: AppColors.primaryColor,
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.white),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
);
