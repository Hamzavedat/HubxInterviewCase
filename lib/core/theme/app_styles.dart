import 'package:flutter/material.dart';
import 'package:hubx_case/core/theme/app_resources.dart';

class AppStyles extends ThemeExtension<AppStyles> {
  final BaseColorScheme _scheme;
  AppStyles(this._scheme);

  //region Text Styles

  late TextStyle robotoRegular = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w400, color: _scheme.textColor);
  late TextStyle roboto28Regular = robotoRegular.copyWith(fontSize: 28);
  late TextStyle roboto16Regular = robotoRegular.copyWith(fontSize: 16);
  late TextStyle roboto13Regular = robotoRegular.copyWith(fontSize: 13);
  late TextStyle roboto12Regular = robotoRegular.copyWith(fontSize: 12);
  late TextStyle roboto11Regular = robotoRegular.copyWith(fontSize: 11);
  late TextStyle roboto11RegularText2Color = roboto11Regular.copyWith(
    fontSize: 11,
    color: _scheme.text2Color,
  );

  late TextStyle robotoLight = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w300, color: _scheme.textColor);
  late TextStyle roboto27Light = robotoLight.copyWith(fontSize: 27);
  late TextStyle roboto17Light = robotoLight.copyWith(fontSize: 17);
  late TextStyle roboto12Light = robotoLight.copyWith(fontSize: 12);
  late TextStyle roboto9Light = robotoLight.copyWith(fontSize: 9);

  late TextStyle robotoSemiBold = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w600, color: _scheme.textColor);
  late TextStyle roboto16SemiBold = robotoSemiBold.copyWith(fontSize: 16);
  late TextStyle roboto28SemiBold = robotoSemiBold.copyWith(fontSize: 28);
  late TextStyle robotoMedium = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w500, color: _scheme.textColor);
  late TextStyle roboto28Medium = robotoMedium.copyWith(fontSize: 28);
  late TextStyle roboto20Medium = robotoMedium.copyWith(fontSize: 20);
  late TextStyle roboto16Medium = robotoMedium.copyWith(fontSize: 16);
  late TextStyle roboto12Medium = robotoMedium.copyWith(fontSize: 12);

  late TextStyle robotoBold = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w700, color: _scheme.textColor);
  late TextStyle roboto28Bold = robotoBold.copyWith(fontSize: 28);

  late TextStyle robotoExtraBold = const TextStyle(fontFamily: 'Roboto')
      .copyWith(fontWeight: FontWeight.w800, color: _scheme.textColor);
  late TextStyle roboto28ExtraBold = robotoExtraBold.copyWith(fontSize: 28);

  // White variants for Paywall
  late TextStyle roboto28ExtraBoldWhite = roboto28ExtraBold.copyWith(
    color: _scheme.white,
  );
  late TextStyle roboto27LightWhite = roboto27Light.copyWith(color: _scheme.white);
  late TextStyle roboto20MediumWhite = roboto20Medium.copyWith(color: _scheme.white);
  late TextStyle roboto17LightWhite = roboto17Light.copyWith(color: _scheme.white);
  late TextStyle roboto16MediumWhite = roboto16Medium.copyWith(color: _scheme.white);
  late TextStyle roboto13RegularWhite = roboto13Regular.copyWith(color: _scheme.white);
  late TextStyle roboto12LightWhite = roboto12Light.copyWith(color: _scheme.white);
  late TextStyle roboto12RegularWhite = roboto12Regular.copyWith(color: _scheme.white);
  late TextStyle roboto12MediumWhite = roboto12Medium.copyWith(color: _scheme.white);
  late TextStyle roboto11RegularWhite52 = roboto11Regular.copyWith(
    color: _scheme.white52,
  );
  late TextStyle roboto9LightWhite52 = roboto9Light.copyWith(
    color: _scheme.white52,
  );
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
