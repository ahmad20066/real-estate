import 'package:get/get.dart';
import 'package:real_estate/common/enums/inbox_enum.dart';

class InboxController extends GetxController {
  var currentScreen = InboxEnum.all.obs;
  changeCurrentScreenStatus(InboxEnum state) => currentScreen.value = state;
}
