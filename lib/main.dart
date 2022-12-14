import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lv/layout/sign_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   var PageTransitionType;
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: AnimatedSplashScreen(
         duration: 3000,
         splash: SvgPicture.asset('assets/images/splash.svg'),
         nextScreen: SignLayout(),
         splashTransition: SplashTransition.scaleTransition,
         pageTransitionType: PageTransitionType?.scale,
         backgroundColor: Colors.white));

  }
}


