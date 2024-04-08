import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/features/home/controller/home_controller.dart';
import 'package:real_estate/features/home/widgets/home_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [SizedBox(height: 50.h), HomePageHeader()],
          ),
        ),
      ),
    );
  }
}
