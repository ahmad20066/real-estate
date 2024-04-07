import 'package:flutter/material.dart';
import 'package:real_estate/common/constants/colors.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
        fontFamily: "Josefin Sans",
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primaryColor,
        ));
  }
}
