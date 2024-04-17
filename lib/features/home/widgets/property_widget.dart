import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/widgets/shimmer_place_holder.dart';

class PropertyWidget extends StatelessWidget {
  const PropertyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293.w,
      height: 400.h,
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
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40.h)),
              child: CachedNetworkImage(
                imageUrl:
                    "https://img.freepik.com/free-photo/vertical-shot-gray-white-building-with-windows-blue-sky_181624-5131.jpg?t=st=1713364901~exp=1713368501~hmac=11e335ba3b8d4a77ad06ef764368ed8953315bd9e3571f79442fd6014ddba3ab&w=360",
                height: 250.h,
                fit: BoxFit.contain,
                width: 250.w,
                imageBuilder: (context, imageProvider) => ShimmerPlaceholder(
                    child: Container(
                  height: 250.h,
                  width: 250.w,
                  color: Colors.black,
                )),
              ))
        ],
      ),
    );
  }
}
