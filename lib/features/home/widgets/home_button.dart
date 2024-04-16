import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class HomeButton extends StatelessWidget {
  const HomeButton(
      {super.key,
      required this.isRight,
      required this.onPressed,
      required this.text,
      required this.isClicked});
  final bool isRight;
  final Function()? onPressed;
  final String? text;
  final bool isClicked;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: isRight
          ? BorderRadius.only(
              topLeft: Radius.circular(30.r),
              bottomLeft: Radius.circular(30.r),
            )
          : BorderRadius.only(
              topRight: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r)),
      child: MaterialButton(
        height: 53.h,
        minWidth: 130.w,
        color: isClicked ? AppColors.primaryColor : AppColors.kLightGreyColor,
        onPressed: onPressed,
        child: Text(
          text!,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
