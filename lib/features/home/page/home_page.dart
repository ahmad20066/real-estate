import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/features/home/controller/home_controller.dart';
import 'package:real_estate/features/home/widgets/home_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        drawer: Container(
          height: double.infinity,
          width: 300.w,
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                IconButton(
                  onPressed: () {
                    controller.scaffoldKey.currentState!.closeDrawer();
                  },
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.kLightGreyColor,
                        radius: 95.r,
                        child: CircleAvatar(
                          radius: 80.r,
                          backgroundImage:
                              AssetImage('assets/images/building.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Sonata Williams',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'France , 122 Paris',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.primaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'Profile',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(
                  indent: 20.w,
                  endIndent: 20.w,
                  thickness: 0.5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'Messages',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(
                  indent: 20.w,
                  endIndent: 20.w,
                  thickness: 0.5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'About Us',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(
                  indent: 20.w,
                  endIndent: 20.w,
                  thickness: 0.5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_outline,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'Privacy Policy',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(indent: 20.w, endIndent: 20.w, thickness: 0.5,),
                ListTile(
                  leading: Icon(
                    Icons.language,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'Language',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(indent: 20.w, endIndent: 20.w, thickness: 0.5,),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: AppColors.primaryColor,
                    size: 38.sp,
                  ),
                  title: Text(
                    'Logout',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(indent: 20.w, endIndent: 20.w, thickness: 0.5,)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [SizedBox(height: 50.h), HomePageHeader()],
            ),
          ),
        ),
      ),
    );
  }
}
