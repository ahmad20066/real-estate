import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/routes/app_routes.dart';
import 'package:real_estate/features/mainlayout/page/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 930),
      child: GetMaterialApp(
        getPages: AppRoute.pages,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeft,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const MainLayout(),
      ),
    );
  }
}
