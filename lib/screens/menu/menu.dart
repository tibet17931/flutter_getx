import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobdohome/controllers/home.controller.dart';
import 'package:mobdohome/screens/menu/components/menu_item.dart';

class MenuScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange.shade300, Colors.orange.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Text(
                "Tibet Pedrod",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
            ],
          ),
          SizedBox(height: 30),
          MenuItem(
            title: "Home",
            icon: Icons.home,
            menuIndex: 0,
          ),
          MenuItem(
            title: "My Account",
            icon: Icons.person,
            menuIndex: 1,
          ),
          MenuItem(title: "My Orders", icon: Icons.history),
          MenuItem(title: "List For All", icon: Icons.list),
          MenuItem(title: "Setting", icon: Icons.settings),
          MenuItem(title: "Logout", icon: Icons.exit_to_app)
        ],
      ),
    );
    // Container(
    //   // width: MediaQuery.of(context).size.width,
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //         colors: [Colors.orange.shade300, Colors.orange.shade600],
    //         begin: Alignment.topCenter,
    //         end: Alignment.bottomCenter),
    //   ),
    // ),
    // SafeArea(
    //   child: Container(
    //     width: MediaQuery.of(context).size.width / 2.0,
    //     child: Column(
    //       children: [
    //         DrawerHeader(
    //           child: CircleAvatar(
    //             radius: 50,
    //             child: Icon(
    //               Icons.person,
    //               size: 50,
    //             ),
    //           ),
    //         ),
    //         ListTile(
    //           leading: Icon(
    //             Icons.home,
    //             color: Colors.black,
    //           ),
    //           title: Text('Home'),
    //         ),
    //         ListTile(
    //           leading: Icon(
    //             Icons.settings,
    //             color: Colors.black,
    //           ),
    //           title: Text('Settings'),
    //         ),
    //         ListTile(
    //           leading: Icon(
    //             Icons.search,
    //             color: Colors.black,
    //           ),
    //           title: Text('Search'),
    //         )
    //       ],
    //     ),
    //   ),
    // ),

    // TweenAnimationBuilder(
    //     duration: Duration(milliseconds: 500),
    //     tween: Tween<double>(begin: 0, end: controller.value.value),
    //     builder: (context, val, child) {
    //       return Transform(
    //         alignment: Alignment.center,
    //         transform: Matrix4.identity()
    //           ..setEntry(3, 2, 0.001)
    //           ..setEntry(0, 3, 200 * val)
    //           ..rotateY((pi / 6) * val),
    //         child: ClipRRect(
    //           borderRadius: BorderRadius.circular(20),
    //           child: Scaffold(
    //             appBar: AppBar(
    //               backgroundColor: Colors.grey,
    //               elevation: 0,
    //               leading: Icon(
    //                 Icons.menu,
    //                 color: Colors.black,
    //               ),
    //               centerTitle: false,
    //               automaticallyImplyLeading: false,
    //               title: Text("3D Drawer"),
    //             ),
    //             body: Center(
    //               child: Text(
    //                 "This is test 3D",
    //                 style: TextStyle(fontSize: 30),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     }),
    // GestureDetector(
    //   onTap: () {
    //     controller.setValue();
    //   },
    // )
  }
}
