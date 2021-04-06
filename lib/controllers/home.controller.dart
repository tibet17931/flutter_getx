import 'package:get/get.dart';

class HomeController extends GetxController {
  final title = 'Yeen'.obs;
  final value = 0.0.obs;
  final menuChange = true.obs;

  final xOffset = .0.obs;
  final yOffset = .0.obs;
  final scaleFactor = 1.0.obs;
  final isDrawerOpen = false.obs;

  @override
  void onInit() {
    print(" my Home");
  }

  setValue() {
    value.value = value.value == 0
        ? 1
        : value.value == 1
            ? 0
            : 0;
  }

  changeIconMenu() {
    xOffset(230);
    yOffset(150);
    scaleFactor(0.6);
    isDrawerOpen(true);
  }

  colseDrawer() {
    xOffset(0);
    yOffset(0);
    scaleFactor(1);
    isDrawerOpen(false);
  }
}
