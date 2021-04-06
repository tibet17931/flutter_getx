// import 'package:mobdohome/controllers/dashboard.controller.dart';
// import 'package:mobdohome/screens/accountScreen/account.dart';
// import 'package:mobdohome/screens/alertsScreen/alerts.dart';
// import 'package:mobdohome/screens/homeScreen/home.dart';
// import 'package:mobdohome/screens/newsScreen/news.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobdohome/screens/dashboard/components/animated_indexed_stack.dart';

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DashboardController>(
//       builder: (controller) {
//         return Scaffold(
//           body: AnimatedSwitcher(
//             duration: const Duration(seconds: 1),
//             child: AnimatedIndexedStack(
//               index: controller.tabIndex,
//               children: [
//                 HomePage(),
//                 NewsPage(),
//                 AlertsPage(),
//                 AccountPage(),
//               ],
//             ),
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             unselectedItemColor: Colors.black,
//             selectedItemColor: Colors.redAccent,
//             onTap: controller.changeTabIndex,
//             currentIndex: controller.tabIndex,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.white,
//             elevation: 0,
//             items: [
//               _bottomNavigationBarItem(
//                 icon: CupertinoIcons.home,
//                 label: 'Home',
//               ),
//               _bottomNavigationBarItem(
//                 icon: CupertinoIcons.sportscourt,
//                 label: 'News',
//               ),
//               _bottomNavigationBarItem(
//                 icon: CupertinoIcons.bell,
//                 label: 'Alerts',
//               ),
//               _bottomNavigationBarItem(
//                 icon: CupertinoIcons.person,
//                 label: 'Account',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   _bottomNavigationBarItem({IconData icon, String label}) {
//     return BottomNavigationBarItem(
//       icon: Icon(icon),
//       label: label,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobdohome/controllers/home.controller.dart';
import 'package:mobdohome/screens/menu/menu.dart';

class DashboardScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Stack(
        children: [
          MenuScreen(),
          AnimatedContainer(
            transform: Matrix4.translationValues(
                controller.xOffset.value, controller.yOffset.value, 0)
              ..scale(controller.scaleFactor.value)
              ..rotateY(controller.isDrawerOpen.value ? -0.5 : 0),
            duration: Duration(milliseconds: 250),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                    controller.isDrawerOpen.value ? 40 : 0.0)),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.isDrawerOpen()
                          ? IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                controller.colseDrawer();
                              },
                            )
                          : IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                                controller.changeIconMenu();
                              },
                              color: Colors.black,
                            ),
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade100,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("wht do you want to search !!",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))),
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // HomeScreen(
          //     xOffset: controller.xOffset(),
          //     yOffset: controller.yOffset(),
          //     scaleFactor: controller.scaleFactor(),
          //     isDrawerOpen: controller.isDrawerOpen()
          //     )
        ],
      ),
    ));
  }
}
