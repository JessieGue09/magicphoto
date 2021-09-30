import 'package:flutter/material.dart';

class FinalImageScreen extends StatelessWidget {
  static const routeName = './finalimage-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Esta es la pantalla de imagen procesada'),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Compartir'),
                  color: Colors.pinkAccent,
                  onPressed: () => {},
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Inicio'),
                  color: Colors.pinkAccent,
                  onPressed: () => {},
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Imprimir'),
                  color: Colors.pinkAccent,
                  onPressed: () => {},
                )
              ]),
        ),
      ),
    );
  }
}
