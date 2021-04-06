import 'package:get/get.dart';
import 'package:mobdohome/controllers/home.controller.dart';
import 'package:mobdohome/controllers/layout.controller.dart';
import 'package:mobdohome/controllers/welcome.controller.dart';

class AllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LayoutController>(() => LayoutController());
  }
}
