import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'package:real_estate/features/mainlayout/controller/main_layout_controller.dart';

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
      // body: Obx(() {
      //   switch (controller.mainState.value) {
      //     case MainLayoutState.home:
      //       return HomePage();
      //     case MainLayoutState.profile:
      //       return ProfilePage();
      //     case MainLayoutState.messages:
      //       return MessagesPage();
      //     case MainLayoutState.saved:
      //       return SavesPage();
      //     default:
      //       return Container();
      //   }
      // }),
      body: PersistentTabView(
        context,
        screens: controller.myScreens,
        items: controller.navItems,
        navBarStyle: NavBarStyle.style12,
      ),
    );
  }
}
