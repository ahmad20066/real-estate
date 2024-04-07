import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:real_estate/common/enums/main_layout_enum.dart';
import 'package:real_estate/features/home/page/home_page.dart';
import 'package:real_estate/features/mainlayout/widgets/bottom_nav_bar_item.dart';
import 'package:real_estate/features/messages/page/messages_page.dart';
import 'package:real_estate/features/profile/page/profile_page.dart';
import 'package:real_estate/features/saves/page/saves_page.dart';

class MainLayoutController extends GetxController {
  Rx<MainLayoutState> mainState = MainLayoutState.home.obs;
  setMainState(MainLayoutState state) => mainState.value = state;
  List<Widget> screens = [
    HomePage(),
    SavesPage(),
    MessagesPage(),
    ProfilePage()
  ];
  List<PersistentBottomNavBarItem> items = [
    bottomNavItem(Icons.home),
    bottomNavItem(Icons.archive),
    bottomNavItem(Icons.message),
    bottomNavItem(Icons.person),
  ];
  List<Widget> get myScreens => screens;
  get navItems => items;
}
