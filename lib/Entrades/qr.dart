import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iter_app_dorsals/Entrades/all.dart';

class qr extends StatefulWidget {
  const qr({Key? key}) : super(key: key);

  @override
  _qrState createState() => _qrState();
}

class _qrState extends State<qr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'QR',
            style: TextStyle(color: Colors.green[900], fontFamily: 'Titulo'),
          ),
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.qr_code),
          onPressed: () {},
          backgroundColor: Colors.lightBlueAccent[100],
          foregroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}
