import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class SoldDetailsWidget extends StatelessWidget {
  const SoldDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: REdgeInsets.all(15),
      decoration: BoxDecoration(
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
                    "3.55\$",
                    style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough,),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 100.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.kLightGreenColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Sold',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 17.sp),
                    ),
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
            'Sale Date',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 25.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'This property was ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: 'sold out ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor),
                ),
                TextSpan(
                  text: 'in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Container(
              height: 60.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.blueColor.withOpacity(0.08),
              ),
              alignment: Alignment.center,
              child: Text(
                '14,March 2022',
              ),
            ),
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
                .copyWith(fontWeight: FontWeight.w600, fontSize: 25.sp),
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
