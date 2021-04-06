import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  AnimationController _controller;
  final Duration duration = Duration(milliseconds: 300);

  @override
  void onInit() {
    _controller = AnimationController(duration: duration, vsync: null);
    super.onInit();
  }
}
