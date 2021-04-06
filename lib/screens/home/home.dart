import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobdohome/controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Text("what do you want to search !!",
                    style: TextStyle(color: Colors.grey, fontSize: 16))),
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
