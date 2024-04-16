import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/enums/home_enum.dart';
import 'package:real_estate/features/home/controller/home_controller.dart';
import 'package:real_estate/features/home/widgets/home_button.dart';
import 'package:real_estate/features/home/widgets/home_user_info.dart';
import 'package:real_estate/features/requests/widgets/request_widget.dart';
import 'package:real_estate/features/requests/widgets/status_widget.dart';
import 'package:real_estate/features/requests/widgets/requests_body.dart';

// ignore: must_be_immutable
class HomePageHeader extends StatelessWidget {
  HomePageHeader({super.key});
  var controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HomeUserInfo(),
              IconButton(
                  onPressed: () {
                    controller.scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.align_horizontal_right_sharp,
                    color: AppColors.primaryColor,
                  ))
            ],
          ),
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
                  isClicked:
                      controller.currentScreen.value == HomeEnum.requests,
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
          Obx(() => controller.currentScreen.value == HomeEnum.home
              ? Container(
                  child: Text('HOME'),
                )
              : RequestsBody()),
        ],
      ),
    );
  }
}
