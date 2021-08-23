import 'package:flutter/material.dart';
import 'package:iter_app_dorsals/TextGenerator/TextGenerator.dart';
import 'package:iter_app_dorsals/Entrades/all.dart';
import 'package:iter_app_dorsals/selector_entradas.dart';

class Configuration extends StatefulWidget {
  TextGenerator text;

  Configuration({required this.text});

  @override
  _ConfigurationState createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  var mode;
  var entry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.text.configuration(),
            style: TextStyle(color: Colors.green[900], fontFamily: 'Titulo'),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          widget.text.code(),
                          style: TextStyle(fontFamily: 'Fuente', fontSize: 16),
                        ),
                        SizedBox(
                          height: 0.0,
                          width: 150.0,
                          child: Divider(
                            thickness: 1,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 5, bottom: 10, left: 60, right: 60),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                          child: TextField(
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            showCursor: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        widget.text.mode(),
                        style: TextStyle(fontFamily: 'Fuente', fontSize: 16),
                      ),
                      SizedBox(
                        height: 0.0,
                        width: 150.0,
                        child: Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => setCheckin(),
                              icon: mode == 'Checkin'
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)),
                          Text('Checkin'),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => setControl(),
                              icon: mode == 'Control'
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)),
                          Text('Control'),
                        ],
                      ),
                    ],
                  ),
                  mode == 'Control'
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                widget.text.point(),
                                style: TextStyle(
                                    fontFamily: 'Fuente', fontSize: 16),
                              ),
                              SizedBox(
                                height: 0.0,
                                width: 150.0,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5, bottom: 10, left: 60, right: 60),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  showCursor: false,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Text(''),
                  Column(
                    children: [
                      Text(
                        widget.text.deafultEntryText(),
                        style: TextStyle(fontFamily: 'Fuente', fontSize: 16),
                      ),
                      SizedBox(
                        height: 0.0,
                        width: 150.0,
                        child: Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => setQr(),
                              icon: entry == 'Qr'
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)),
                          Text(
                            widget.text.QREntry(true),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => setDorsal(),
                              icon: entry == 'Dorsal'
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)),
                          Text(widget.text.dorsalEntry(true)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => setManual(),
                              icon: entry == 'Manual'
                                  ? Icon(Icons.check_box)
                                  : Icon(Icons.check_box_outline_blank)),
                          Text(widget.text.manualEntry(true)),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      selectedEntry(entry, context);
                    },
                    child: Icon(
                      Icons.navigate_next,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      onPrimary: Colors.blue[900],
                      onSurface: Colors.blueGrey[800],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }

  void setCheckin() {
    setState(() {
      mode = 'Checkin';
    });
  }

  void setControl() {
    setState(() {
      mode = 'Control';
    });
  }

  void setQr() {
    setState(() {
      entry = 'Qr';
    });
  }

  void setDorsal() {
    setState(() {
      entry = 'Dorsal';
    });
  }

  void setManual() {
    setState(() {
      entry = 'Manual';
    });
  }

  void selectedEntry(String entry, BuildContext context) {
    if (entry == 'Qr') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => selector_entradas(mainPage: qr())));
    }
    if (entry == 'Dorsal') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => selector_entradas(mainPage: dorsal())));
    }
    if (entry == 'Manual') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => selector_entradas(mainPage: manual())));
    }
  }
}
