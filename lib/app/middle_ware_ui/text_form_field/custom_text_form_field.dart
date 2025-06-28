import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/app/global/app_texts/app_texts.dart';
import 'package:flutter_application_1/app/middle_ware_ui/text_form_field/general_text_form_field.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/enums/text_form_field_type.dart';
import 'package:flutter_application_1/core/extensions/localization_ext.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.type,
    required this.controller,
    this.activeDebounce = false,
    this.focusNode,
  });

  final TextFormFieldType type;
  final TextEditingController controller;
  final bool activeDebounce;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TextFormFieldType.password:
        return PasswordField(
          controller: controller,
        );
      case TextFormFieldType.phoneNumber:
        return PhoneNumberField(
          controller: controller,
        );
    }
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisibile = false;

  @override
  Widget build(BuildContext context) {
    return GeneralTextFormField(
      controller: widget.controller,
      hint: context.translate(T.passwordH),
      keaBoardType: TextInputType.visiblePassword,
      prefixIcon: Icon(
        Icons.lock,
        color: AppColors.primaryColor,
      ),
      obscureText: isVisibile,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (password) {},
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isVisibile = !isVisibile;
          });
        },
        icon: isVisibile
            ? const Icon(
                Icons.visibility,
                color: AppColors.primaryColor,
              )
            : const Icon(Icons.visibility_off, color: AppColors.primaryColor),
      ),
      validator: (password) {
        if (password!.isEmpty) {
          return context.translate(T.passwordV);
        } else {
          return null;
        }
      },
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return GeneralTextFormField(
      controller: controller,
      hint: context.translate(T.phoneNumberH),
      validator: (phone) {
        if (phone!.isEmpty) {
          return context.translate(T.phoneNumberV);
        } else {
          return null;
        }
      },
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      textInputAction: TextInputAction.next,
      keaBoardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: false,
      ),
      prefixIcon: const Icon(
        Icons.phone,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class ServerIp extends StatelessWidget {
  const ServerIp({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return GeneralTextFormField(
      controller: controller,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
      ],
      hint: context.translate(T.serverNumber),
      validator: (serverIp) {
        if (serverIp == null || serverIp.isEmpty) return context.translate(T.serverIpV);

        final parts = serverIp.split('.');
        if (parts.length != 4 ||
            parts.any((p) => int.tryParse(p) == null || int.parse(p) < 0 || int.parse(p) > 255)) {
          return context.translate(T.serverIpV2);
        }

        return null;
      },
      textInputAction: TextInputAction.done,
      prefixIcon: Icon(
        Icons.location_pin,
        color: AppColors.primaryColor,
      ),
    );
  }
}
