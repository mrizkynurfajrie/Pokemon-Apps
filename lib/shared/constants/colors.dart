import 'package:flutter/material.dart';

class AppColor {
  //NEUTRAL
  static const MaterialColor neutral = MaterialColor(
    _neutral,
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD2D6DB),
      400: Color(0xFF9DA4AE),
      500: Color(0xFF6C737F),
      600: Color(0xFF4D5761),
      700: Color(0xFF384250),
      800: Color(0xFF1F2A37),
      900: Color(_neutral),
    },
  );
  static const int _neutral = 0xFF111927;

  //PRIMARY
  static const MaterialColor primary = MaterialColor(
    _primary,
    <int, Color>{
      600: Color(0xFF263C66),
      700: Color(0xFF162645),
      800: Color(0xFF0E1F40),
      900: Color(_primary),
    },
  );
  static const int _primary = 0xFF091733;

  static const MaterialColor error = MaterialColor(
    _error,
    <int, Color>{
      25: Color(0xFFFFFBFA),
      50: Color(0xFFFEF3F2),
      100: Color(0xFFFEE4E2),
      200: Color(0xFFFECDCA),
      300: Color(0xFFFDA29B),
      400: Color(0xFFF97066),
      500: Color(_error),
      600: Color(0xFFD92D20),
      700: Color(0xFFB42318),
      800: Color(0xFF912018),
      900: Color(0xFF7A271A),
    },
  );
  static const int _error = 0xFFF04438;

  static const Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  //GRADIENT
  static const LinearGradient shimmerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 0.5, 0.7],
    colors: [
      Color.fromARGB(255, 220, 220, 220),
      Color.fromARGB(255, 169, 169, 169),
      Color.fromARGB(255, 220, 220, 220),
    ],
  );

  //ACCENT
  static const Color secondaryColor = Color(0xFF96989c);
  static const Color transparentColor = Colors.transparent;
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color light800 = Color(0xFFF2F2F2);
  static const Color light900 = Color(0xFFCCC2C2);
  static const Color blackColor = Color(0xFF000000);
  static const Color bgColor = Color(0xFFF5F5F5);
  static const Color boxSuccessColor = Color(0xFFd5e8d4);
}
