import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_rail/second_screen.dart';

class first_screen extends StatefulWidget {
  const first_screen({super.key});

  @override
  State<first_screen> createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  var _name = "Eusuf Uddin";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:  Text(
                "First Screen",
                style: TextStyle(color: Colors.white),
              ),

            ),
            SizedBox(height: 10,),
            Center(
                child: ElevatedButton(child: Text("Pass Data"), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => second_screen(name: _name),));
                },)
            )

          ],
        ),
      ),
    );
  }
}

