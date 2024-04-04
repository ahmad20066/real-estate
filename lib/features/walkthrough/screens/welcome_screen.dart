import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/widgets/background_image.dart';
import 'package:real_estate/common/widgets/custom_button.dart';
import 'package:real_estate/features/walkthrough/screens/walkthrough._screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              SizedBox(
                width: 250.w,
                child: Text(
                  "Welcome To Toleronato App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 35.sp),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Text(
                  "Lorem ipsum dolor sit ametconsect elit, sed do eiusmod temporiidunt utlabore et dolore magna aliqua.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                      fontSize: 20.sp),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              CustomButton(
                text: "Get Started",
                onTap: () {
                  Get.to(() => WalkThroughScreen());
                },
                width: 160.w,
                height: 50.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
