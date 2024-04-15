import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/features/requests/widgets/request_widget.dart';
import 'package:real_estate/features/requests/widgets/status_widget.dart';

class RequestsBody extends StatelessWidget {
  const RequestsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusWidget(
            dotColor: Colors.green,
            status: 'Approved',
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: ((context, index) {
              return RequestWidget(
                buttonColor: AppColors.kLightGreenColor.withOpacity(0.27),
              );
            }),
          ),
          SizedBox(
            height: 50.h,
          ),
          StatusWidget(
            dotColor: AppColors.purpleColor,
            status: 'Pending',
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: ((context, index) {
              return RequestWidget(
                buttonColor: AppColors.purpleColor.withOpacity(0.27),
              );
            }),
          ),
        ],
      ),
    );
  }
}
