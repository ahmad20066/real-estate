import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/enums/main_layout_enum.dart';
import 'package:real_estate/features/home/page/home_page.dart';
import 'package:real_estate/features/mainlayout/controller/main_layout_controller.dart';
import 'package:real_estate/features/messages/page/messages_page.dart';
import 'package:real_estate/features/profile/page/profile_page.dart';
import 'package:real_estate/features/saves/page/saves_page.dart';

class MainLayout extends GetView<MainLayoutController> {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainLayoutController());
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: AppColors.primaryColor,
      // ),
      // bottomNavigationBar: NavBarWidget(),
      body: Obx(() {
        switch (controller.mainState.value) {
          case MainLayoutState.home:
            return HomePage();
          case MainLayoutState.profile:
            return ProfilePage();
          case MainLayoutState.messages:
            return MessagesPage();
          case MainLayoutState.saved:
            return SavesPage();
          default:
            return Container();
        }
      }),
    );
  }
}
