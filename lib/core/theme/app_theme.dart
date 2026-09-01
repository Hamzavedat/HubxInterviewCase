import 'package:flutter/material.dart';
import 'package:hubx_case/core/theme/app_resources.dart';
import 'package:hubx_case/core/theme/app_styles.dart';

class AppThemes {
  static ThemeData lightTheme = fromColorScheme(AppResources.defaultColors(), brightness: Brightness.light);

  static ThemeData fromColorScheme(BaseColorScheme colorScheme, {Brightness brightness = Brightness.light}) {
    var styles = AppStyles(colorScheme);

    return ThemeData(
      primaryColor: colorScheme.primaryColor,
      scaffoldBackgroundColor: colorScheme.backgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(style: styles.mainButtonStyle),
      extensions: [colorScheme, styles],
    );
  }
}
