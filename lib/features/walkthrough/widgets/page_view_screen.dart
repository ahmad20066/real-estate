import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewScreen extends StatelessWidget {
  final String text;
  final String subtitle;
  final String image;
  const PageViewScreen({
    Key? key,
    required this.text,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 370.w,
          alignment: Alignment.center,
          height: 70.h,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 25.sp, color: Color.fromRGBO(35, 35, 35, 1)),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: 380.w,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
                color: Color.fromRGBO(157, 157, 157, 0.87), fontSize: 20.sp),
          ),
        )
      ],
    );
  }
}
