import 'package:flutter/material.dart';

class AppResources {
  static BaseColorScheme getColors(Brightness brightness) {
    return defaultColors();
  }

  static BaseColorScheme defaultColors() {
    return BaseColorScheme(
      primaryColor: const Color(0xFF28AF6E),
      buttonTextColor: const Color(0xFFFFFFFF),
      textColor: const Color(0xFF13231B),
      text2Color: const Color(0xB2597165),
      blobColor: const Color(0xFFC0F0FF),
      backgroundColor: const Color(0xFFFBFAFA),
    );
  }
}

class BaseColorScheme extends ThemeExtension<BaseColorScheme> {
  final Color primaryColor;
  final Color buttonTextColor;
  final Color backgroundColor;
  final Color textColor;
  final Color text2Color;
  final Color blobColor;

  BaseColorScheme({
    required this.primaryColor,
    required this.buttonTextColor,
    required this.backgroundColor,
    required this.textColor,
    required this.text2Color,
    required this.blobColor,
  });

  @override
  ThemeExtension<BaseColorScheme> copyWith({
    Color? primaryColor,
    Color? buttonTextColor,
    Color? backgroundColor,
    Color? textColor,
    Color? text2Color,
    Color? blobColor,
  }) {
    return BaseColorScheme(
      primaryColor: primaryColor ?? this.primaryColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      text2Color: text2Color ?? this.text2Color,
      blobColor: blobColor ?? this.blobColor,
    );
  }

  @override
  ThemeExtension<BaseColorScheme> lerp(covariant ThemeExtension<BaseColorScheme>? other, double t) {
    if (other is! BaseColorScheme) return this;
    return t < 0.5 ? this : other;
  }
}
