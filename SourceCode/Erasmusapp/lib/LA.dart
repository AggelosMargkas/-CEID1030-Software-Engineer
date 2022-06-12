import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home.dart';
import 'maps.dart';

class LearningAgreement extends StatefulWidget {
  @override
  _LearningAgreementState createState() => _LearningAgreementState();
}

class _LearningAgreementState extends State<LearningAgreement> {
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Information!',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30.0),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                onPressed: () {
                  print("Wazap");
                },
                color: Colors.blue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "FAQ's",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                onPressed: () {
                  print("Wazap");
                },
                color: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "How to Apply?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                onPressed: () {
                  print("Wazap");
                },
                color: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "What to Earn?",
                  style: TextStyle(color: Colors.white),
                ),
                onLongPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Maps()));
              },
              ),
            ),
          ],
        ),
      )
    );
  }
}