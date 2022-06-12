import 'package:flutter/material.dart';
import 'package:startup_namer/Home.dart';
import 'package:startup_namer/InputField.dart';
import 'package:startup_namer/LoginPage.dart';


class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
        },
        child: Text('Elevated Login'),
      ),
     );
  }
}