import 'package:flutter/material.dart';

class dorsal extends StatefulWidget {
  const dorsal({Key? key}) : super(key: key);

  @override
  _dorsalState createState() => _dorsalState();
}

class _dorsalState extends State<dorsal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DORSAL',
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
