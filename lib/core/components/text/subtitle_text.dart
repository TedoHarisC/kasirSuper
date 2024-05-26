import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.titleLarge;

    return Text(
      text,
      style: baseStyle?.merge(style),
      textAlign: textAlign,
    );
  }
}
