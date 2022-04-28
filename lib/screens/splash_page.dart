import 'package:flutter/material.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Image.asset("assets/image/bg_no 1.png"),
      ),
    );
  }
}