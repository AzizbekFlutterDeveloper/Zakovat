import 'package:flutter/material.dart';
import 'package:zakovat/screens/home_page.dart';
import 'package:zakovat/screens/login_page.dart';
import 'package:zakovat/screens/splash_page.dart';

class MyRoute{
  Route? routeGeneret(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) =>const LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (context) =>const MyHomePage(),);
    }
    return null;
  }
}