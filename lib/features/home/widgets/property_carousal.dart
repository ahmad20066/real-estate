import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/features/home/widgets/property_widget.dart';

class PropertyCarousal extends StatefulWidget {
  const PropertyCarousal({
    super.key,
  });

  @override
  State<PropertyCarousal> createState() => _PropertyCarousalState();
}

class _PropertyCarousalState extends State<PropertyCarousal> {
  int selectedIndex = 0;
  @override
  void didChangeDependencies() {
    selectedIndex = 6 ~/ 2;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: CarouselSlider.builder(
          itemCount: 6,
          itemBuilder: (context, index, realIndex) => PropertyWidget(),
          options: CarouselOptions(
            viewportFraction: 0.6,
            height: 370.h,
            initialPage: selectedIndex,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                selectedIndex = index;
              });
            },
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
