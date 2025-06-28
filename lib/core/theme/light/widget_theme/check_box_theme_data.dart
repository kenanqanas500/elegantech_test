import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';
import '../../../helpers/constants.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(AppConstants.defaultBorderRadious / 2),
    ),
  ),
  side: const BorderSide(color: AppColors.whileColor40),
);
