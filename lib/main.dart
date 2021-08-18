import 'package:flutter/material.dart';
import 'package:iter_app_dorsals/configuration.dart';
import 'package:iter_app_dorsals/TextGenerator/all.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                generated_button('Català', context),
                generated_button('Castellano', context),
                generated_button('English', context),
                //generated_button('Français', context),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  ElevatedButton generated_button(String idioma, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (idioma == 'Català') {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Configuration(text: new TextGeneratorCatalan());
            }),
          );
        }
        if (idioma == 'Castellano') {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Configuration(text: new TextGeneratorSpanish());
            }),
          );
        }
        if (idioma == 'English') {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Configuration(text: new TextGeneratorEnglish());
            }),
          );
        }
        //if (idioma == 'Français') {}
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.lightGreenAccent,
        onPrimary: Colors.green[900],
        onSurface: Colors.green[800],
        minimumSize: Size(115, 30),
      ),
      child: Text(
        idioma,
        style: TextStyle(
          fontFamily: 'Fuente',
        ),
      ),
    );
  }
}
