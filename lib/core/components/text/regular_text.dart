import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class RegularText extends StatelessWidget {
  const RegularText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  factory RegularText.medium(String text,
      {TextStyle? style, TextAlign? textAlign}) {
    return RegularText(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ).merge(style),
      textAlign: textAlign ?? TextAlign.start,
    );
  }

  factory RegularText.semiBold(String text,
      {TextStyle? style, TextAlign? textAlign}) {
    return RegularText(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ).merge(style),
      textAlign: textAlign ?? TextAlign.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.bodyMedium;

    return Text(
      text,
      style: baseStyle?.merge(style),
      textAlign: textAlign,
    );
  }
}
