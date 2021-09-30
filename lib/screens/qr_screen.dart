import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magicphoto_app/screens/generate_screen.dart';
import 'package:magicphoto_app/screens/principal_screen.dart';
import 'package:magicphoto_app/screens/scan_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRPage extends StatefulWidget {
  const GenerateQRPage({Key? key}) : super(key: key);
  static const routeName = './qr-screen';



  @override
  _GenerateQRPageState createState() => _GenerateQRPageState();
}

class _GenerateQRPageState extends State<GenerateQRPage> {
  TextEditingController controller = TextEditingController();

  selectGoBack(BuildContext context){
    Navigator.of(context).pushNamed(PrincipalPageScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: 'Enlace Spotify',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Pegue en el cuadro de arriba su enlace de canción',
                  ),
                  QrImage(
                    data: controller.text,
                    size: 250,

                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          setState(() {

                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          padding: EdgeInsets.all(10),
                        ),
                        child: Text('Generar Codigo QR')),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        child: Text('Volver'),
                        color: Colors.pinkAccent,
                        onPressed: () => selectGoBack(context),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0)
                        )
                    )
                  ]
              )

            ],
          ),
        ),

      ),
    );
  }
}
