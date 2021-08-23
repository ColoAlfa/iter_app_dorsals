import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class scanner extends StatefulWidget {
  const scanner({Key? key}) : super(key: key);

  @override
  _scannerState createState() => _scannerState();
}

@override
class _scannerState extends State<scanner> {
  bool _flashOn = false;
  bool _frontCam = false;
  GlobalKey _qrKey = GlobalKey();
  late QRViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        QRView(
          key: _qrKey,
          onQRViewCreated: (QRViewController controller) {
            this._controller = controller;
            controller.scannedDataStream.listen((val) {
              print(val.code);
              if (mounted) {
                _controller.dispose();
                Navigator.pop(context, val.code);
              }
            });
          },
          overlay: QrScannerOverlayShape(borderColor: Colors.white),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Text(
              'iterScan',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Titulo',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    _flashOn = !_flashOn;
                  });
                  _controller.toggleFlash();
                },
                icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _frontCam = !_frontCam;
                  });
                  _controller.flipCamera();
                },
                icon: Icon(_frontCam ? Icons.camera_front : Icons.camera_rear),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.close),
                color: Colors.white,
              )
            ],
          ),
        )
      ]),
    );
  }
}
