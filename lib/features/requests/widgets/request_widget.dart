import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/routes/app_routes.dart';

class RequestWidget extends StatelessWidget {
  final Color buttonColor;
  RequestWidget({
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 360.w,
      padding: EdgeInsets.all(15.h),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 76.w,
            height: 116.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/building.jpg',
                  fit: BoxFit.fill,
                )),
          ), //
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Modern Family House",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w500),
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'RT: ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 15.sp,
                          ),
                    ),
                    TextSpan(
                      text: 'Kylie Jouvanie',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 15.sp,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                "3,500\$ Month",
                style: TextStyle(color: AppColors.primaryColor),
              ),
              Text("14,March 2024  11:20 AM")
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.requestDetailsUrl);
            },
            child: Container(
              height: 100.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
          )
        ],
      ),
    );
  }
}
