import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
      child: Text("s"),
    );
  }
}
