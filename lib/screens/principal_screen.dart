import 'package:flutter/material.dart';
import 'package:magicphoto_app/screens/loadimage_screen.dart';
import 'package:magicphoto_app/screens/qr_screen.dart';
import '../screens/scan_screen.dart';
import '../screens/generate_screen.dart';

class PrincipalPageScreen extends StatelessWidget {
  static const routeName = './principal-screen';

  selectGenerate(BuildContext context){
    Navigator.of(context).pushNamed(GenerateQRPage.routeName);
  }

  selectScan(BuildContext context){
    Navigator.of(context).pushNamed(ScanScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, bottom: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              Image.asset('images/generador.jpg', height: 300, fit: BoxFit.contain,),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Generar'),
                color: Colors.pinkAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                side: BorderSide(color: Colors.pink),
                ),
                elevation: 5.5,
                onPressed: () => selectGenerate(context),
              ),
              Image.asset('images/escaner.jpg', height: 300,),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Escanear'),
                color: Colors.pinkAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.pink),
                ),
                elevation: 5.5,
                onPressed: () => selectScan(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
