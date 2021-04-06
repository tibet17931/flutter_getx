import 'package:get/get.dart';
import 'package:mobdohome/controllers/binding/all.binding.dart';
import 'package:mobdohome/routes/app_routes.dart';
import 'package:mobdohome/screens/dashboard/dashboard.dart';
// import 'package:mobdohome/screens/home/menu.dart';
import 'package:mobdohome/routes/sizeTransitions.dart';
import 'package:mobdohome/screens/welcome/welcome.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.WELCOME,
        page: () => WelcomeScreen(),
        binding: AllBinding(),
        customTransition: SizeTransitions(),
        transitionDuration: Duration(milliseconds: 240)),
    GetPage(
        name: Routes.HOME,
        page: () => DashboardScreen(),
        binding: AllBinding(),
        customTransition: SizeTransitions(),
        transitionDuration: Duration(milliseconds: 240))
    // GetPage(
    //     name: Routes.LOGIN, page: () => LoginScreen(), binding: AllBinding()),
  ];
}
