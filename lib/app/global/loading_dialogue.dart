import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/colors/app_colors.dart';

void loadingDialogue(BuildContext context) {
  showCupertinoDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: AppColors.whiteColor.withOpacity(0.3),
            ),
          ),
          // Centered loading animation
          Center(
            child: SpinKitChasingDots(
              color: AppColors.primaryColor,
              size: 50.0.sp,
            ),
          ),
        ],
      );
    },
  );
}
