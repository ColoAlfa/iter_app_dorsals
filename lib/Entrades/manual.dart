import 'package:flutter/material.dart';

class manual extends StatefulWidget {
  const manual({Key? key}) : super(key: key);

  @override
  _manualState createState() => _manualState();
}

class _manualState extends State<manual> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MANUAL',
            style: TextStyle(color: Colors.green[900], fontFamily: 'Titulo'),
          ),
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}
