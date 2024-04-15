import 'package:get/get.dart';
import 'package:real_estate/features/requests/pages/payment_page.dart';
import 'package:real_estate/features/requests/pages/rented_request_details_page.dart';
import 'package:real_estate/features/requests/pages/request_details_page.dart';
import 'package:real_estate/features/requests/pages/sold_request_details_page.dart';

class AppRoute {
  static const homePageUrl = "/home";
  static const loginPageUrl = "/login-page-url";

  static const requestDetailsUrl = "/request-details-url";
  static const rentedRequestDetailsUrl = "/rented-request-details-url";
  static const soldRequestDetailsUrl = "/sold-request-details-url";
  static const paymentPageUrl = '/payment-page';


  static List<GetPage> pages = [
    GetPage(name: requestDetailsUrl, page: () => RequestDetailsPage()),
    GetPage(name: rentedRequestDetailsUrl, page: () => RentedDetailsPage()),
    GetPage(name: soldRequestDetailsUrl, page: () => SoldRequestDetailsPage()),
    GetPage(name: paymentPageUrl, page: () => PaymentPage())
  ];
}
