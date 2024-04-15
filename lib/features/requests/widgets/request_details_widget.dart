import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class RequestDetailsWidget extends StatelessWidget {
  const RequestDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800.h,
      padding: REdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.purpleColor, width: 0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 130.w,
                height: 200.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/building.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                width: 20.w,
              ),
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
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 190.w,
                        child: Text(
                          '166 Old town road San France',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: 23.sp,
                        color: Colors.amber,
                      ),
                      Icon(Icons.star, size: 23.sp, color: Colors.amber),
                      Icon(Icons.star, size: 23.sp, color: Colors.amber),
                      Icon(Icons.star, size: 23.sp, color: Colors.amber),
                      Icon(Icons.star, size: 23.sp, color: Colors.amber),
                      SizedBox(width: 5.w),
                      Text(
                        '5.0',
                        style: TextStyle(fontSize: 15.sp),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "3,500\$ In Month",
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.......',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.kPrimaryGreyColor, fontSize: 18.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Booking Date',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Booking From'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 60.h,
                    width: 155.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.blueColor.withOpacity(0.08),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '14,March 2022',
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Booking To'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 60.h,
                    width: 155.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.blueColor.withOpacity(0.08),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '14,March 2022',
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            indent: 20.w,
            endIndent: 20.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Request By',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 22.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/building.jpg'),
              ),
              title: Text('Kylie Jouvnie'),
              subtitle: Text(
                'Kyliedeeb21@gmail.com',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.primaryColor),
              ),
              trailing: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.call,
                ),
              )),
          Text(
            'Dear sir, I sent this request in order to get the apartment on the fourth floor within the specified date and I hope that my application will be approved.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.kPrimaryGreyColor, fontSize: 18.sp),
          ),
        ],
      ),
    );
  }
}
