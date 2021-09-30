import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/tutorial_screen.dart';
import './screens/principal_screen.dart';
import './screens/generate_screen.dart';
import './screens/scan_screen.dart';
import './screens/qr_screen.dart';
import './screens/finalimage_screen.dart';
import './screens/loadimage_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Page',
      theme: ThemeData(
          textTheme: ThemeData
              .light()
              .textTheme
              .copyWith(
              bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1)
              ),
              headline6: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )
          )
      ),
      initialRoute: './home-screen',
      routes: {
        HomePageScreen.routeName: (ctx) => HomePageScreen(),
        TutorialPageScreen.routeName: (ctx) => TutorialPageScreen(),
        PrincipalPageScreen.routeName: (ctx) => PrincipalPageScreen(),
        GenerateScreen.routeName: (ctx) => GenerateScreen(),
        ScanScreen.routeName: (ctx) => ScanScreen(),
        // ignore: equal_keys_in_map
        GenerateQRPage.routeName: (ctx) => GenerateQRPage(),
        FinalImageScreen.routeName: (ctx) => FinalImageScreen(),
        LoadImageScreen.routeName: (ctx) => LoadImageScreen(),
      },
    );
  }


}
