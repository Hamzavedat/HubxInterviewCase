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
      paywallBgColor: const Color(0xFF101E17),
      white: const Color(0xFFFFFFFF),
      white52: const Color(0x85FFFFFF), // ~52% opacity
      white70: const Color(0xB3FFFFFF), // ~70% opacity
      white30: const Color(0x4DFFFFFF), // ~30% opacity
      white08: const Color(0x14FFFFFF), // ~8% opacity
      white05: const Color(0x0DFFFFFF), // ~5% opacity
      black: const Color(0xFF000000),
      black70: const Color(0xB3000000), // ~70% opacity
      black40: const Color(0x66000000), // ~40% opacity
      black24: const Color(0x3D000000), // ~24% opacity
      primary24: const Color(0xFF28AF6E).withValues(alpha: 0.24),
      transparent: const Color(0x00000000),
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
  final Color paywallBgColor;
  final Color white;
  final Color white52;
  final Color white70;
  final Color white30;
  final Color white08;
  final Color white05;
  final Color black;
  final Color black70;
  final Color black40;
  final Color black24;
  final Color primary24;
  final Color transparent;

  BaseColorScheme({
    required this.primaryColor,
    required this.buttonTextColor,
    required this.backgroundColor,
    required this.textColor,
    required this.text2Color,
    required this.blobColor,
    required this.paywallBgColor,
    required this.white,
    required this.white52,
    required this.white70,
    required this.white30,
    required this.white08,
    required this.white05,
    required this.black,
    required this.black70,
    required this.black40,
    required this.black24,
    required this.primary24,
    required this.transparent,
  });

  @override
  ThemeExtension<BaseColorScheme> copyWith({
    Color? primaryColor,
    Color? buttonTextColor,
    Color? backgroundColor,
    Color? textColor,
    Color? text2Color,
    Color? blobColor,
    Color? paywallBgColor,
    Color? white,
    Color? white52,
    Color? white70,
    Color? white30,
    Color? white08,
    Color? white05,
    Color? black,
    Color? black70,
    Color? black40,
    Color? black24,
    Color? primary24,
    Color? transparent,
  }) {
    return BaseColorScheme(
      primaryColor: primaryColor ?? this.primaryColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      text2Color: text2Color ?? this.text2Color,
      blobColor: blobColor ?? this.blobColor,
      paywallBgColor: paywallBgColor ?? this.paywallBgColor,
      white: white ?? this.white,
      white52: white52 ?? this.white52,
      white70: white70 ?? this.white70,
      white30: white30 ?? this.white30,
      white08: white08 ?? this.white08,
      white05: white05 ?? this.white05,
      black: black ?? this.black,
      black70: black70 ?? this.black70,
      black40: black40 ?? this.black40,
      black24: black24 ?? this.black24,
      primary24: primary24 ?? this.primary24,
      transparent: transparent ?? this.transparent,
    );
  }

  @override
  ThemeExtension<BaseColorScheme> lerp(covariant ThemeExtension<BaseColorScheme>? other, double t) {
    if (other is! BaseColorScheme) return this;
    return t < 0.5 ? this : other;
  }
}
