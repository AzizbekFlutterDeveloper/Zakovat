import 'package:flutter/material.dart';
import 'package:zakovat/screens/bolim_page.dart';
import 'package:zakovat/screens/fortuna_page.dart';
import 'package:zakovat/screens/home_page.dart';
import 'package:zakovat/screens/login_page.dart';
import 'package:zakovat/screens/quia_page.dart';
import 'package:zakovat/screens/splash_page.dart';

class MyRoute{
  Route? routeGeneret(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) =>const SplashPage());
      case "/login":
        return MaterialPageRoute(builder: (context) =>const LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (context) =>const MyHomePage());
      case "/bolim":
        return MaterialPageRoute(builder: (context) =>const BolimPage());
      case "/fortuna":
        return MaterialPageRoute(builder: (context) =>const FortunaPage());
      case "/quiz":
        return MaterialPageRoute(builder: (context) =>const QuizPage());
    }
    return null;
  }
}