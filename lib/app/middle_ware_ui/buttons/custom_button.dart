import 'package:flutter_application_1/app/middle_ware_ui/buttons/general_button.dart';
import 'package:flutter_application_1/app/middle_ware_ui/texts/custom_text.dart';
// import 'package:flutter_application_1/app/middle_ware_ui/texts/custom_text.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/enums/button_type.dart';
import 'package:flutter_application_1/core/enums/text_type.dart';
// import 'package:flutter_application_1/core/enums/text_type.dart';
import 'package:flutter_application_1/core/extensions/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.type,
    required this.onPressed,
  });
  final ButtonType type;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      // case ButtonType.wellComeIn:
      //   return WellComeIn(
      //     onPressed: onPressed,
      //   );
      case ButtonType.login:
        return LoginButton(
          onPressed: onPressed,
        );
      case ButtonType.cancel:
        return CancelButton(
          onPressed: onPressed,
        );
      // case ButtonType.continuE:
      //   return ContinueButton(
      //     onPressed: onPressed,
      //   );
      // case ButtonType.deleteInvoice:
      //   return DeleteInvoice(
      //     onPressed: onPressed,
      //   );
      // case ButtonType.confirm:
      //   return ConfirmButton(
      //     onPressed: onPressed,
      //   );

      // case ButtonType.request:
      //   return RequestButon(
      //     onPressed: onPressed,
      //   );
      // case ButtonType.print:
      //   return PrintButton(
      //     onPressed: onPressed,
      //   );
      // case ButtonType.finishAndLeave:
      //   return FinishAndLeaveButton(
      //     onPressed: onPressed,
      //   );
    }
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GeneralButton(
      onPressed: onPressed,
      child: CustomText(
        type: TextType.loginButton,
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GeneralButton(
      onPressed: onPressed,
      child: CustomText(
        type: TextType.cancel,
      ),
    );
  }
}
