import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/extensions/theme_ext.dart';

class GeneralTextFormField extends StatelessWidget {
  const GeneralTextFormField({
    super.key,
    required this.controller,
    this.hint,
    this.inputFormatters,
    this.keaBoardType,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputAction,
    this.contentPadding,
    this.maxLines = 1,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.hasBorder = true,
    this.onChanged,
    this.focusNode,
  });

  final String? hint;
  final TextInputType? keaBoardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final int maxLines;
  final bool obscureText;
  final void Function(String)? onFieldSubmitted;
  final bool hasBorder;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keaBoardType,
      obscureText: obscureText,
      validator: validator,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      style: context.getTheme.textTheme.labelLarge,
      textAlignVertical: TextAlignVertical.center,
      maxLines: maxLines,
      cursorColor: AppColors.thirdColor,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      // onEditingComplete: ,
      // onSaved: ,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        border: hasBorder ? context.getTheme.inputDecorationTheme.border : InputBorder.none,
        focusedBorder: hasBorder ? context.getTheme.inputDecorationTheme.focusedBorder : InputBorder.none,
        errorBorder: hasBorder ? context.getTheme.inputDecorationTheme.errorBorder : InputBorder.none,
        enabledBorder: hasBorder ? context.getTheme.inputDecorationTheme.enabledBorder : InputBorder.none,
        constraints: context.getTheme.inputDecorationTheme.constraints,
        contentPadding: contentPadding ?? context.getTheme.inputDecorationTheme.contentPadding,
        errorStyle: context.getTheme.inputDecorationTheme.errorStyle,
        labelStyle: context.getTheme.inputDecorationTheme.labelStyle,
        hintText: hint,
        filled: context.getTheme.inputDecorationTheme.filled,
        fillColor: context.getTheme.inputDecorationTheme.fillColor,
        hintStyle: context.getTheme.inputDecorationTheme.hintStyle,
        alignLabelWithHint: context.getTheme.inputDecorationTheme.alignLabelWithHint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
