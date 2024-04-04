import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int red = 255;
  int green = 0;
  int blue = 0;

  void _updateColor() {
    setState(() {
      red = Random().nextInt(256);
      green = Random().nextInt(256);
      blue = Random().nextInt(256);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          color: Color.fromARGB(255, red, green, blue),
          child: TextButton(
            onPressed: _updateColor,
            child: Text(
              'Change Color',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
