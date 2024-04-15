import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusWidget extends StatelessWidget {
  final Color dotColor;
  final String status;
  StatusWidget({
    required this.dotColor,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: dotColor,
            radius: 5.r,
          ),
          Text(status)
        ],
      ),
    );
  }
}
