import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/routes/app_routes.dart';
import 'package:real_estate/common/widgets/custom_button.dart';
import 'package:real_estate/features/requests/widgets/request_details_widget.dart';

class RequestDetailsPage extends StatelessWidget {
  const RequestDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modern Family House'),
        centerTitle: true,
      ),
      body: Padding(
        padding: REdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.purpleColor,
                    radius: 5.r,
                  ),
                  SizedBox(width: 10.w),
                  Text("Pending")
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              RequestDetailsWidget(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(text: 'Accept', onTap: () {
                    Get.toNamed(AppRoute.paymentPageUrl);
                  }),
                  CustomButton(
                    text: 'Reject',
                    onTap: () {},
                    buttonColor: AppColors.kPrimaryGreyColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
