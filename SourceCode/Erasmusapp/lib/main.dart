import 'package:flutter/material.dart';
import 'dart:ui';

import 'ChatPage.dart';
import 'LA.dart';
import 'LoginPage.dart';
import 'Home.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  int _selectedTab = 0;

  final _pageOptions = [
      Home(),
      LearningAgreement(),
      Home(),
      ChatPage(),
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          currentIndex: _selectedTab,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attachment_rounded),
              label: 'Apply',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool_alt),
              label: 'Chat',
            ),
          ],
        ),


      )

    );
  }
}