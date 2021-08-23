import 'package:flutter/material.dart';
import 'package:iter_app_dorsals/scanner.dart';

class qr extends StatefulWidget {
  const qr({Key? key}) : super(key: key);

  @override
  _qrState createState() => _qrState();
}

class _qrState extends State<qr> {
  String _result = 'vacio';
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
          onPressed: () {
            _openscanner(context);
          },
          backgroundColor: Colors.lightBlueAccent[100],
          foregroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.lightGreenAccent,
        body: Center(
          child: Text(
            _result,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Future _openscanner(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (c) => scanner()));
    setState(() {
      _result = result;
    });
  }
}
