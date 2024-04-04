import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/widgets/custom_button.dart';
import 'package:real_estate/features/login/screen/login_screen.dart';
import 'package:real_estate/features/walkthrough/controllers/walkthrough_controller.dart';
import 'package:real_estate/features/walkthrough/widgets/page_view_screen.dart';

class WalkThroughScreen extends StatelessWidget {
  WalkThroughScreen({super.key});
  final WalkThroughController controller = Get.put(WalkThroughController());
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                controller.activeIndex(page);
              },
              itemCount: controller.pages.length,
              itemBuilder: (BuildContext context, int index) {
                return controller.pages[index % controller.pages.length];
              },
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                    height: 40.h,
                    width: controller.activeIndex.value > 0 ? 130 : 0,
                    text: "Previous",
                    onTap: () {
                      _pageController.animateToPage(
                          (controller.activeIndex.value) - 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    }),
                CustomButton(
                    text: controller.activeIndex.value == 2 ? "Finish" : "Next",
                    width: 130.w,
                    height: 40.h,
                    onTap: () {
                      if (controller.activeIndex.value == 2) {
                        Get.to(() => LoginScreen());
                      } else {
                        _pageController.animateToPage(
                            (controller.activeIndex.value) + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      }
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
