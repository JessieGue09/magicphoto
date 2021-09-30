import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:magicphoto_app/screens/principal_screen.dart';
import '../screens/tutorial_screen.dart';

class HomePageScreen extends StatelessWidget {
  static const routeName = './home-screen';

  selectTutorial(BuildContext context){
    Navigator.of(context).pushNamed(TutorialPageScreen.routeName);
  }
  
  selectGo(BuildContext context){
    Navigator.of(context).pushNamed(PrincipalPageScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('images/portada.jpg', height: 500,),
              Align(
                alignment: Alignment.center,
                child: Text('Inmortaliza recuerdos y agrega un toque de magia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  RaisedButton(
                    child: Text('Iniciar'),
                    color: Colors.pinkAccent,
                    onPressed: () => selectTutorial(context),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)
                    )
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    child: Text('Entrar'),
                    color: Colors.pinkAccent,
                    onPressed: () => selectGo(context),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
