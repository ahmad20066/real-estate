import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyStackWidget extends StatelessWidget {
  const PropertyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 120,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: 330.w,
                height: 120.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: Colors.green)),
              ),
            ],
          ),
        ),
        Positioned(
          right: 250.w,
          child: Container(
            height: 125.h,
            width: 124.w,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                    bottomRight: Radius.zero)),
          ),
        )
      ],
    );
  }
}
