import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Erasmus 4 U',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
              )),
          actions: const [
            Icon(Icons.more_vert)
          ],
          backgroundColor: Colors.blue,
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/universities.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),

    );
  }
}