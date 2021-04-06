import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobdohome/controllers/layout.controller.dart';

class MenuItem extends GetView<LayoutController> {
  final String title;
  final IconData icon;
  final int menuIndex;

  MenuItem(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.menuIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () => controller.switchIndex(menuIndex),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ))
          ],
        ),
      ),
    );
  }
}
