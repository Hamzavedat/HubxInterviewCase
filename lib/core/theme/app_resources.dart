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
      white10: const Color(0x1AFFFFFF), // ~10% opacity
      black: const Color(0xFF000000),
      black70: const Color(0xB3000000), // ~70% opacity
      black40: const Color(0x66000000), // ~40% opacity
      black24: const Color(0x3D000000), // ~24% opacity
      black20: const Color(0x33000000), // ~20% opacity
      black05: const Color(0x0D000000), // ~5% opacity
      primary24: const Color(0xFF28AF6E).withValues(alpha: 0.24),
      text2Color10: const Color(0xB2597165).withValues(alpha: 0.1),
      transparent: const Color(0x00000000),
      shimmerBase: const Color(0xFFE0E0E0),
      shimmerHighlight: const Color(0xFFF5F5F5),
      premiumBoxBgColor: const Color(0xFF24201A),
      premiumGold1Start: const Color(0xFFE5C990),
      premiumGold1End: const Color(0xFFE4B046),
      premiumGold2Start: const Color(0xFFFFDE9C),
      premiumGold2End: const Color(0xFFF5C25B),
      premiumArrowColor: const Color(0xFFD0B070),
      badgeColor: const Color(0xFFFF3B30),
      fabGradientEnd: const Color(0xFF2CCC80),
      inactiveTabColor: const Color(0xFF979798),
      errorColor: const Color(0xFFFF3B30),
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
  final Color white10;
  final Color white05;
  final Color black;
  final Color black70;
  final Color black40;
  final Color black24;
  final Color black20;
  final Color black05;
  final Color primary24;
  final Color text2Color10;
  final Color transparent;
  final Color shimmerBase;
  final Color shimmerHighlight;
  final Color premiumBoxBgColor;
  final Color premiumGold1Start;
  final Color premiumGold1End;
  final Color premiumGold2Start;
  final Color premiumGold2End;
  final Color premiumArrowColor;
  final Color badgeColor;
  final Color fabGradientEnd;
  final Color inactiveTabColor;
  final Color errorColor;

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
    required this.white10,
    required this.white05,
    required this.black,
    required this.black70,
    required this.black40,
    required this.black24,
    required this.black20,
    required this.black05,
    required this.primary24,
    required this.text2Color10,
    required this.transparent,
    required this.shimmerBase,
    required this.shimmerHighlight,
    required this.premiumBoxBgColor,
    required this.premiumGold1Start,
    required this.premiumGold1End,
    required this.premiumGold2Start,
    required this.premiumGold2End,
    required this.premiumArrowColor,
    required this.badgeColor,
    required this.fabGradientEnd,
    required this.inactiveTabColor,
    required this.errorColor,
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
    Color? white10,
    Color? black,
    Color? black70,
    Color? black40,
    Color? black24,
    Color? black20,
    Color? black05,
    Color? primary24,
    Color? text2Color10,
    Color? transparent,
    Color? shimmerBase,
    Color? shimmerHighlight,
    Color? premiumBoxBgColor,
    Color? premiumGold1Start,
    Color? premiumGold1End,
    Color? premiumGold2Start,
    Color? premiumGold2End,
    Color? premiumArrowColor,
    Color? badgeColor,
    Color? fabGradientEnd,
    Color? inactiveTabColor,
    Color? errorColor,
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
      white10: white10 ?? this.white10,
      black: black ?? this.black,
      black70: black70 ?? this.black70,
      black40: black40 ?? this.black40,
      black24: black24 ?? this.black24,
      black20: black20 ?? this.black20,
      black05: black05 ?? this.black05,
      primary24: primary24 ?? this.primary24,
      text2Color10: text2Color10 ?? this.text2Color10,
      transparent: transparent ?? this.transparent,
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
      premiumBoxBgColor: premiumBoxBgColor ?? this.premiumBoxBgColor,
      premiumGold1Start: premiumGold1Start ?? this.premiumGold1Start,
      premiumGold1End: premiumGold1End ?? this.premiumGold1End,
      premiumGold2Start: premiumGold2Start ?? this.premiumGold2Start,
      premiumGold2End: premiumGold2End ?? this.premiumGold2End,
      premiumArrowColor: premiumArrowColor ?? this.premiumArrowColor,
      badgeColor: badgeColor ?? this.badgeColor,
      fabGradientEnd: fabGradientEnd ?? this.fabGradientEnd,
      inactiveTabColor: inactiveTabColor ?? this.inactiveTabColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  ThemeExtension<BaseColorScheme> lerp(
    covariant ThemeExtension<BaseColorScheme>? other,
    double t,
  ) {
    if (other is! BaseColorScheme) return this;
    return t < 0.5 ? this : other;
  }
}
