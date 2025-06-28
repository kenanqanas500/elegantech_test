import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';
import '../../../helpers/constants.dart';

final InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  fillColor: AppColors.whiteColor,
  filled: true,
  alignLabelWithHint: true,
  constraints: const BoxConstraints(minHeight: 55),
  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
  hintStyle: TextStyle(color: AppColors.greyColor, fontSize: 10),
  errorStyle: TextStyle(fontSize: 10, color: AppColors.errorColor),

  // Add all borders to unify height and look
  border: defaultOutlineInputBorder,
  enabledBorder: defaultOutlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
  focusedErrorBorder: errorOutlineInputBorder,
);

final OutlineInputBorder defaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

final OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(color: AppColors.thirdColor),
);

final OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(color: AppColors.primaryColor),
);
