import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:magicphoto_app/screens/principal_screen.dart';


class TutorialPageScreen extends StatelessWidget {
  static const routeName = './tutorial-screen';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "¡Escanea!",
          body: "Puedes escanear nuestros códigos para ver a donde te llevan",
          image: Image.asset(
              'images/escaner.jpg', height: 200.0, ),
        ),
        PageViewModel(
          title: "",
          body: "Pega el enlace de la canción que te gusta y presiona el botón para buscarla"
          "Una vez listo, presiona el botón ""Generar código QR"" para continuar",
          image: Center(
            child: Image.asset(
                'images/link.png', height: 150.0, fit: BoxFit.cover,),
          ),
        ),
        PageViewModel(
          title: "¡Listo!",
          body: "Puedes escanear tu creación",
          image: Center(
            child: Image.network(
                "https://domaine.com/image.png", height: 175.0),
          ),
        )
      ],
      showSkipButton: true,
      skip: const Text("Atrás"),
      next: const Text("Siguiente"),
      done: const Text("Vamos", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: (){
          Navigator.pushNamed(context, PrincipalPageScreen.routeName);
        // When done button is press
      },
      onSkip: () {
        // When done button is press
        Navigator.pushNamed(context, PrincipalPageScreen.routeName);
      },
    );
  }
}
