import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/features/home/widgets/property_carousal.dart';
import 'package:real_estate/features/home/widgets/property_stack_widget.dart';

class PropertiesBody extends StatelessWidget {
  const PropertiesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: PropertyCarousal(),
        ),
        Text(
          "Rented Properties",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontSize: 26.sp, fontWeight: FontWeight.w500),
        ),
        ListView.builder(
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: PropertyStackWidget(),
                ))
      ],
    );
  }
}
