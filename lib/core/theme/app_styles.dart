import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubx_case/core/theme/app_resources.dart';

class AppStyles extends ThemeExtension<AppStyles> {
  final BaseColorScheme _scheme;
  AppStyles(this._scheme);

  //region Text Styles

  late TextStyle robotoRegular = GoogleFonts.roboto().copyWith(fontWeight: FontWeight.w400, color: _scheme.textColor);
  late TextStyle roboto28Regular = robotoRegular.copyWith(fontSize: 28);
  late TextStyle roboto16Regular = robotoRegular.copyWith(fontSize: 16);
  late TextStyle roboto11Regular = robotoRegular.copyWith(fontSize: 11);
  late TextStyle roboto11RegularText2Color = roboto11Regular.copyWith(fontSize: 11, color: _scheme.text2Color);

  late TextStyle robotoSemiBold = GoogleFonts.roboto().copyWith(fontWeight: FontWeight.w600, color: _scheme.textColor);
  late TextStyle roboto16SemiBold = robotoSemiBold.copyWith(fontSize: 16);
  late TextStyle roboto28SemiBold = robotoSemiBold.copyWith(fontSize: 28);
  //endregion

  //region Button Styles
  late ButtonStyle mainButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(56),
    backgroundColor: _scheme.primaryColor,
    foregroundColor: _scheme.buttonTextColor,
    textStyle: roboto16SemiBold,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.all(16),
    elevation: 0,
  );

  //endregion

  @override
  ThemeExtension<AppStyles> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppStyles> lerp(covariant ThemeExtension<AppStyles>? other, double t) {
    return this;
  }
}
