import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final title = 'Yeen'.obs;
  final ar = [1, 2, 3, 4];
  @override
  void onInit() {
    print(" my Welcome");
    // super.onInit();
  }

  changeStateTitke() async {
    title("Fuck");
  }
}
