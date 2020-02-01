import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new Test());

class Test extends StatefulWidget {
  @override
   TestApp createState() => new TestApp();
  }

class TestApp extends State<Test> { 
  String hey = "Hey there";
  Random _random = Random();
  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Get Start",
      home: new Scaffold(
        body: new InkWell(
              onTap: changeColor,
              child: new Center(
                child: new Text(hey, style: new TextStyle(fontSize: 25.0),)
              ),
        ),
        backgroundColor: _color,
      ),
    );
  }
}