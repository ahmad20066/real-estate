import 'package:get/get.dart';
import 'package:real_estate/common/enums/home_enum.dart';

class HomeController extends GetxController {
  var currentScreen = HomeEnum.home.obs;
  changeCurrentScreenStatus(HomeEnum state) => currentScreen.value = state;
}
