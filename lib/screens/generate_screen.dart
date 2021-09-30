import 'package:flutter/material.dart';
import '../screens/finalimage_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateScreen extends StatelessWidget {
  static const routeName = './generate-screen';

  selectGenerateQR(BuildContext context){
    Navigator.of(context).pushNamed(FinalImageScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pegue aquí su enlace de canción'),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Buscar'),
                color: Colors.pinkAccent,
                onPressed: () => {},
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Generar código QR'),
                color: Colors.pinkAccent,
                onPressed: () => selectGenerateQR(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
