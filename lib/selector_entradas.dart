import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iter_app_dorsals/Entrades/all.dart';

class selector_entradas extends StatefulWidget {
  Widget mainPage;
  selector_entradas({required this.mainPage});

  @override
  _selector_entradasState createState() => _selector_entradasState(mainPage);
}

class _selector_entradasState extends State<selector_entradas> {
  int pageIndex = 0;
  Widget mainPage;
  _selector_entradasState(this.mainPage);
  //entradas
  final dorsal dorsalPage = dorsal();
  final qr qrPage = qr();
  final manual manualPage = manual();
  bool hasChanged = false;
  Widget _showPage = Text('');
  int tappedIndex = 0;
  @override
  Widget build(BuildContext context) {
    indexInicialice();
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.lightGreenAccent,
            items: <Widget>[
              Icon(
                CupertinoIcons.number_circle,
                size: 30,
              ),
              Icon(Icons.qr_code, size: 30),
              Icon(CupertinoIcons.hand_raised, size: 30),
            ],
            onTap: (tappedIndex) {
              hasChanged = true;
              setState(() {
                _showPage = _pageChooser(tappedIndex);
              });
              //Handle button tap
            },
            index: pageIndex,
          ),
          body: selectedEntry(hasChanged)),
    );
  }

  void indexInicialice() {
    if (mainPage is qr) {
      pageIndex = 1;
    }
    if (mainPage is dorsal) {
      pageIndex = 0;
    }
    if (mainPage is manual) {
      pageIndex = 2;
    }
  }

  Widget selectedEntry(bool hasChanged) {
    if (hasChanged == true) {
      return _showPage;
    } else {
      return mainPage;
    }
  }

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return dorsalPage;
      case 1:
        return qrPage;
      case 2:
        return manualPage;
      default:
        return Text('');
    }
  }
}
