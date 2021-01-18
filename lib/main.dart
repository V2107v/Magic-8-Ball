import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Center(
            child: Text(
              'Magic 8 Ball',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 28.0,
                  letterSpacing: 1.5),
            ),
          ),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageChange = 1;
  void changeImage() {
    setState(() {
      imageChange = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeImage();
              },
              child: Image.asset('images/ball$imageChange.png'),
            ),
          ),
        ],
      ),
    );
  }
}
