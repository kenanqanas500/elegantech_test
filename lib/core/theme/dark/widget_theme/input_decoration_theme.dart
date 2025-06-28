import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';
import '../../../helpers/constants.dart';

const InputDecorationTheme inputDecorationDarkTheme = InputDecorationTheme(
  fillColor: AppColors.darkGreyColor,
  filled: true,
  constraints: BoxConstraints(maxHeight: 50),
  hintStyle: TextStyle(color: AppColors.whileColor40),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
  errorStyle: TextStyle(fontSize: 6),
);

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(color: AppColors.primaryColor),
);

const OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(
    color: AppColors.errorColor,
  ),
);
