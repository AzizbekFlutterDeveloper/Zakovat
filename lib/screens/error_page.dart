import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zakovat/core/constans/color_cons.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/image/78663-viewtalk-no-internet.json"),
            Text(
              "Internet Mavjud Emas !",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.03,
              ),
            )
          ],
        ),
      ),
    );
  }
}
