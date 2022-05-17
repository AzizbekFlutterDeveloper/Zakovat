import 'package:flutter/material.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/routes/my_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _forRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: ConstColor.blue),
      initialRoute: '/',
      onGenerateRoute: _forRoute.routeGeneret,
    );
  }
}
