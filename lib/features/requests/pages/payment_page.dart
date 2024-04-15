import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle paymentStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: AppColors.kPrimaryGreyColor);

    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Details'),
      ),
      body: Padding(
        padding: REdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MODERN FAMILY HOUSE',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Property Price',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '\$3.255.000',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 50.sp, color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Payment method for this property',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 20.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Credit',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 20.sp, color: Colors.white)),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'View Details',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.black,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              height: 250.h,
              decoration: BoxDecoration(color: AppColors.kLightGreyColor),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/mastercard.jpg',
                      ),
                    ),
                    title: Text('Card Holder'),
                    subtitle: Text('Kylie Omani Deeb'),
                  ),
                  Divider(
                    indent: 30.w,
                    endIndent: 30.w,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: ListTile(
                      title: Text('Payment Address'),
                      subtitle: Text('166 Old town road San France'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Payment Details',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 25.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Paid Balance', style: paymentStyle),
                Text('\$2.333.000', style: paymentStyle)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Remaining', style: paymentStyle),
                Text('\$2.333.000', style: paymentStyle)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Balance'),
                Text('\$2.333.000')
              ],
            )
          ],
        ),
      ),
    );
  }
}
