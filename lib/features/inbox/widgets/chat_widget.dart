import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/routes/app_routes.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(AppRoute.chatPageUrl);
      },
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/background.png'),
            radius: 32.r,
          ),
          // Positioned(
          //   top: 0.h,
          //   right: 0.h,
          //   child: CircleAvatar(
          //     radius: 10.sp,
          //     backgroundColor: AppColors.pinkColor,
          //     child: Text(
          //       '2',
          //       style: TextStyle(fontSize: 13.sp, color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
      title: Text(
        'Sonata Williams',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.w500, fontSize: 20.sp),
      ),
      subtitle: Text(
        'Lorem ipsum dolor sit amet',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.kPrimaryGreyColor, fontSize: 16.sp),
      ),
      trailing: Text(
        '10:14 AM',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.kLightGreyColor, fontSize: 14.sp),
      ),
    );
  }
}
