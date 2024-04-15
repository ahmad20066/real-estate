import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/enums/home_enum.dart';
import 'package:real_estate/features/home/controller/home_controller.dart';
import 'package:real_estate/features/home/widgets/home_button.dart';
import 'package:real_estate/features/home/widgets/home_user_info.dart';

// ignore: must_be_immutable
class HomePageHeader extends StatelessWidget {
  HomePageHeader({super.key});
  var controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeUserInfo(),
        SizedBox(
          height: 30.h,
        ),
        Obx(
          () => RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Manage Your ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.kPrimaryGreyColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: controller.currentScreen.value == HomeEnum.home
                      ? 'Spaces                             With Us'
                      : '                                   Requests',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 30.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Obx(
          () => Row(
            children: [
              HomeButton(
                isClicked: controller.currentScreen.value == HomeEnum.requests,
                isRight: true,
                onPressed: () {
                  controller.changeCurrentScreenStatus(HomeEnum.requests);
                },
                text: "Requests",
              ),
              SizedBox(
                width: 2.w,
              ),
              HomeButton(
                isClicked: controller.currentScreen.value == HomeEnum.home,
                text: "Home",
                isRight: false,
                onPressed: () {
                  controller.changeCurrentScreenStatus(HomeEnum.home);
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5.r,
                    ),
                    Text('Approved')
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 150.h,
                width: 344.w,
                padding: EdgeInsets.all(15.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 76.w,
                      height: 96.h,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/building.jpg',
                            fit: BoxFit.fill,
                          )),
                    ), //
                    Column(
                      children: [
                        Text("Modern Family House", style: Theme.of(context).textTheme.bodyMedium,),
                        Text("RT: Kylie smthn"),
                        Text("3,500 \$ Month"),
                        Text("14,March 2024  11:20 AM")
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            color: AppColors.kLightGreenColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_right_rounded),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
