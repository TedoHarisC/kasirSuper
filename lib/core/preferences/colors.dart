import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private Constructor

  static const green = MaterialColor(0xff2DBD78, {
    200: Color(0xff5ED99E),
    400: Color(0xff35CF85),
    600: Color(0xff28A96B),
    800: Color(0xff1E8051),
  });

  static const yellow = MaterialColor(0xffFFD101, {
    200: Color(0xffFFDF4C),
    400: Color(0xffFFD51A),
    600: Color(0xffE5B400),
    800: Color(0xffB28300),
  });

  static const red = MaterialColor(0xffEB4755, {
    200: Color(0xffF28C95),
    400: Color(0xffED5E6A),
    600: Color(0xffE83040),
    800: Color(0xffCF1726),
  });

  static const orange = MaterialColor(0xffFF722C, {
    200: Color(0xffFFA77A),
    400: Color(0xffFF8547),
    600: Color(0xffFF6314),
    800: Color(0xffE04B00),
  });

  static const blue = MaterialColor(0xff476BEB, {
    200: Color(0xff8CA3F2),
    400: Color(0xff5E7EED),
    600: Color(0xff3059E8),
    800: Color(0xff173FCF),
  });

  static const black = MaterialColor(0xff666666, {
    200: Color(0xff999999),
    400: Color(0xff808080),
    600: Color(0xff4D4D4D),
    800: Color(0xff333333),
  });

  static const white = MaterialColor(0xffE0E0E0, {
    200: Color(0xffFAFAFA),
    400: Color(0xffF5F5F5),
    600: Color(0xffCCCCCC),
    800: Color(0xffB8B8B8),
  });

  static const textDisabled = Color(0xffA6A6A6);
}
