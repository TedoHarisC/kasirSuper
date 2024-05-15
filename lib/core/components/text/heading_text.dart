import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: context.theme
            .primaryColor, /* 
            diambil dari extension (Nama extension nya yaitu theme, 
            jadi tinggal memanggil nama extension nya saja yaitu 
            context) */
      ),
    );
  }
}
