import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final double height, width;
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    this.width = 100,
    this.height = 50,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5.sp),
        alignment: Alignment.center,
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), gradient: gradient),
        child: Text(
          text,
          style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 20.sp),
        ),
      ),
    );
  }
}
