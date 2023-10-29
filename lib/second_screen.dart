import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  var name;
  second_screen({this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: name==null ? Text("No Data pass"): Text(name, style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
