import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/features/home/widgets/property_carousal.dart';

class PropertiesBody extends StatelessWidget {
  const PropertiesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PropertyCarousal(),
        ),
      ],
    );
  }
}
