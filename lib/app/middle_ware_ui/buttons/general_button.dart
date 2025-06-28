import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/extensions/theme_ext.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });

  final void Function()? onPressed;
  final Widget? child;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ??
          context.getTheme.elevatedButtonTheme.style?.copyWith(
              textStyle: WidgetStatePropertyAll(
            TextStyle(
              color: AppColors.whiteColor,
            ),
          )),
      child: child,
    );
  }
}
