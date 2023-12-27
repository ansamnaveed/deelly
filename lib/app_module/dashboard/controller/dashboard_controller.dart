import 'package:get/get.dart';

class DashboardController extends GetxController {
  var loader = false.obs;

  //  Bottom Bar Variables

  var bottomSelectedIndex = 0.obs;
  updateBottomSelectedIndex(int index) {
    bottomSelectedIndex.value = index;
    update();
  }

  //
}
