import 'package:get/get.dart';
import 'package:real_estate/features/requests/pages/request_details_page.dart';

class AppRoute {
  static const homePageUrl = "/home";
  static const loginPageUrl = "/login-page-url";
  
  static const requestDetailsUrl = "/request-details-url";

  static List<GetPage> pages = [
    GetPage(name: requestDetailsUrl, page: () => RequestDetailsPage())
  ];
}
