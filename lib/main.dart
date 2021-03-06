import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'accueil/accueil.dart';

/* Code pour lancer l'appli*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Splash(),
      title: 'CFTC-FPT 34',
      theme: ThemeData(
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

//? Code pour le SplashScreen//
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      backgroundColor: Color(4281415051),
      image: Image.asset('assets/logo.png'),
      loaderColor: Color(4279598252),
      photoSize: 80.0,
      navigateAfterSeconds: Accueil(),
    );
  }
}
