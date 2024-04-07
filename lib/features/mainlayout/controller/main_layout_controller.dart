import 'package:get/get.dart';
import 'package:real_estate/common/enums/main_layout_enum.dart';

class MainLayoutController extends GetxController {
  Rx<MainLayoutState> mainState = MainLayoutState.home.obs;
  setMainState(MainLayoutState state) => mainState.value = state;
  @override
  void onInit() {
    super.onInit();
  }
}
