import 'package:google_fonts/google_fonts.dart';
import 'package:mobdohome/routes/app_pages.dart';
import 'package:mobdohome/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: WelcomeScreen(),
      initialRoute: Routes.WELCOME,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      // locale: Locale('th', 'TH'),
    );
  }
}
