import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/widgets/shimmer_place_holder.dart';

class HomeUserInfo extends StatelessWidget {
  const HomeUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfAhnwkuj8L70GkAwYk4w4VW99vPXI8RCTu1tRC2AuHw&s',
            placeholder: (context, url) {
              return ShimmerPlaceholder(
                  child: Container(
                height: 50.h,
                width: 50.w,
                color: Colors.black,
              ));
            },
            fit: BoxFit.fill,
             height: 50.h,
                width: 50.w,
          ),
        ),
        Column(
          children: [
            Text(
              "Sonata Williams",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "France,Paris",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.kPrimaryGreyColor),
            ),
          ],
        )
      ],
    );
  }
}
