import 'package:get/get.dart';
import '../view/dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;
  var selectedIndex = "";
  int selectedBottom = 0;
  updateView(int index) {
    selectedBottom = index;
    update();
  }
}
