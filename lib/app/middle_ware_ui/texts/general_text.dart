import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/extensions/localization_ext.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({
    super.key,
    required this.word,
    this.maxLines,
    this.overflow,
    this.style,
    this.textAlign = TextAlign.center,
    this.isApiText = false,
  });
  final String word;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool isApiText;

  @override
  Widget build(BuildContext context) {
    return Text(
      // word,
      isApiText ? word : context.translate(word),
      maxLines: maxLines,
      overflow: overflow,
      style: style,
      textAlign: textAlign,
    );
  }
}
