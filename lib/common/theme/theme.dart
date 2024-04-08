import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
        fontFamily: "Josefin Sans",
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primaryColor,
        ),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
            bodyLarge: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 30.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700)));
  }
}
