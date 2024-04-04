import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/features/walkthrough/widgets/page_view_screen.dart';

class WalkThroughController extends GetxController {
  List<Widget> pages = [
    PageViewScreen(
        text: "Duis aute irure dolor  in voluptate velit . ",
        subtitle:
            "Lorem ipsum dolor sit ametconsect elit, sed do eiusmod temporiidunt utlabore.",
        image: "assets/images/screen1.png"),
    PageViewScreen(
        text: "Duis aute irure dolor  in voluptate velit . ",
        subtitle:
            "Lorem ipsum dolor sit ametconsect elit, sed do eiusmod temporiidunt utlabore.",
        image: "assets/images/screen2.png"),
    PageViewScreen(
        text: "Duis aute irure dolor  in voluptate velit . ",
        subtitle:
            "Lorem ipsum dolor sit ametconsect elit, sed do eiusmod temporiidunt utlabore.",
        image: "assets/images/screen3.png"),
  ];
  Rx<int> activeIndex = 0.obs;
}
