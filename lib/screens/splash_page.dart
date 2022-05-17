import 'package:flutter/material.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      body: Center(
        child: Image.asset("assets/image/bg_no 1.png"),
      ),
    );
  }
}