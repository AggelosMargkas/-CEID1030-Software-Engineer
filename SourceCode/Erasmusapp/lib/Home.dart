import 'dart:ui';

import 'package:flutter/material.dart';


class Home extends StatefulWidget{

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  int _selectedTab = 0;
  final _pageOptions = [
     Home(),
    // CatPage(),
    // SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const Drawer(

      ),
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
      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Container(
              height: 150,

              decoration: BoxDecoration(

                image: const DecorationImage(
                  image: const AssetImage('assets/images/erasmus4ulogo.png'),
                  alignment: Alignment.bottomLeft,
                ),

                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Expanded(
                      child:  Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.right,
                              )
                      ),

                ],

              ),
            ),
            Row(
              children: [
                Text(' '),
              ],

            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                // image: const DecorationImage(
                //   image: const AssetImage('assets/images/uni.png'),
                //   alignment: Alignment.center,
                //   fit: BoxFit.fitWidth
                // ),
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                      child:  Text(
                        'My Erasmus Mobility ',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/images/uni.png',),
                  ),
                  Expanded(
                      child:  Text(
                        ' begins in ..',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                ]

              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _selectedTab = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.info),
      //       label: 'Info',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.attachment_rounded),
      //       label: 'Apply',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pan_tool_alt),
      //       label: 'Survive',
      //     ),
      //   ],
      // ),


    );
  }
}