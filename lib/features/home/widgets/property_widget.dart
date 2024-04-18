import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/widgets/shimmer_place_holder.dart';

class PropertyWidget extends StatelessWidget {
  const PropertyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293.w,
      height: 490.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.h)),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 224, 221, 221),
              offset: Offset(0, 5),
              spreadRadius: 1,
              blurRadius: 2)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.h)),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://img.freepik.com/free-photo/vertical-shot-gray-white-building-with-windows-blue-sky_181624-5131.jpg?t=st=1713364901~exp=1713368501~hmac=11e335ba3b8d4a77ad06ef764368ed8953315bd9e3571f79442fd6014ddba3ab&w=360",
                    height: 250.h,
                    fit: BoxFit.fill,
                    width: 200.w,
                    placeholder: (context, imageProvider) => ShimmerPlaceholder(
                        child: Container(
                      height: 250.h,
                      width: 250.w,
                      color: Colors.black,
                    )),
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Modern Family House",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.kPrimaryGreyColor,
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    "166 Old town road San France",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.kPrimaryGreyColor,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  "\$3.255 / Mounth",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.blueColor),
                ),
                SizedBox(
                  width: 5.w,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
