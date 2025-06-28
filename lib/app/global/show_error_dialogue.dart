import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/middle_ware_ui/buttons/custom_button.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/enums/button_type.dart';
import 'package:flutter_application_1/core/extensions/routing_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showErrorDialogue({
  required BuildContext context,
  required String message,
}) {
  showAdaptiveDialog(
      context: context,
      barrierColor: AppColors.transparent,
      builder: (ctx) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Center(
              child: AlertDialog(
                backgroundColor: AppColors.whiteColor,
                contentPadding: EdgeInsets.all(10.sp),
                elevation: 10,
                content: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.sp),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ZoomIn(
                        child: CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 25.r,
                          child: Icon(Icons.error, color: AppColors.whiteColor),
                        ),
                      ),
                      Text(
                        message,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50.h),
                      CustomButton(
                          type: ButtonType.cancel,
                          onPressed: () {
                            context.pop();
                          })
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      });
}
