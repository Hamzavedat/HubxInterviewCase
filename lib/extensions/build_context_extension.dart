import 'package:flutter/material.dart';
import 'package:hubx_case/core/theme/app_resources.dart';
import 'package:hubx_case/core/theme/app_styles.dart';

extension BuildContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  AppStyles get appStyle => Theme.of(this).extension<AppStyles>()!;
  BaseColorScheme get appColorScheme => Theme.of(this).extension<BaseColorScheme>()!;
}
