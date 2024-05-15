import 'package:flutter/material.dart';

class LightTheme {
  final Color primaryColor;

  LightTheme(this.primaryColor);

  ThemeData get theme {
    return ThemeData(
      primaryColor: primaryColor,
      fontFamily: 'Poppins',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}
