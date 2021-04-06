import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeTransitions extends CustomTransition {
  @override
  Widget buildTransition(
      BuildContext context,
      Curve curve,
      Alignment alignment,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
    // Align(
    //   alignment: Alignment.center,
    //   child: SizeTransition(
    //     sizeFactor: CurvedAnimation(
    //       parent: animation,
    //       curve: curve,
    //     ),
    //     child: child,
    //   ),
    // );
    // SlideTransition(
    //   position: Tween<Offset>(
    //     begin: const Offset(1, 0),
    //     end: Offset.zero,
    //   ).animate(animation),
    //   child: child,
    // );
  }
}
