import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobdohome/controllers/welcome.controller.dart';
import 'package:mobdohome/routes/app_routes.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(150))),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25, bottom: 25),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 55,
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person,
                        color: Colors.orange.shade300,
                      ),
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 55,
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.orange.shade300,
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, right: 32),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              // Spacer(),

              // margin: EdgeInsets.only(top: 25),
              // padding: EdgeInsets.only(left: 20, right: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () {
                    // Get.toNamed(Routes.HOME);
                    Get.offNamed(Routes.HOME);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Dnon't have an account ?"),
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xff6bceff)),
                    ),
                  ],
                ),
                onTap: () {
                  // Navigator.pushNamed(context, '/signup');
                },
              ),
            ],
          )),
    );
  }
}
