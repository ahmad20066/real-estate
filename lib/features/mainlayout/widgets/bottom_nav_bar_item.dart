import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:real_estate/common/constants/colors.dart';

PersistentBottomNavBarItem bottomNavItem(IconData icon) {
  return PersistentBottomNavBarItem(
    icon: Icon(icon),
    title: ("Settings"),
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: AppColors.scaffoldBackgroundColor,
  );
}
