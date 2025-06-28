import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitChasingDots(
        color: AppColors.primaryColor,
        size: 50.0.sp,
      ),
    );
  }
}
