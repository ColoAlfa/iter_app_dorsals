import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class dorsal extends StatefulWidget {
  const dorsal({Key? key}) : super(key: key);

  @override
  _dorsalState createState() => _dorsalState();
}

class _dorsalState extends State<dorsal> {
  String text = '';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          NumericKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.lightBlue,
            rightButtonFn: () {
              setState(() {
                text = text.substring(0, text.length - 1);
              });
            },
            rightIcon: Icon(
              Icons.backspace,
              color: Colors.lightBlue,
            ),
            leftButtonFn: () {
              print('left button clicked');
            },
            leftIcon: Icon(
              Icons.check,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    ));
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}
