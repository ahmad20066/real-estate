import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInCard extends StatelessWidget {
  const LogInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      width: 375.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Text(
            "Log In",
            style: GoogleFonts.josefinSans(
                fontSize: 40.sp, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
