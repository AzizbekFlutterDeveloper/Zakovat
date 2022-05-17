import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:zakovat/bloc/home_cubit.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class Fortuna extends StatelessWidget {
  final BuildContext contextt;
  const Fortuna({Key? key,required this.contextt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(400),
      width: getWidth(330),
      child: FortuneWheel(
        alignment: Alignment.bottomRight,
        rotationCount: 3,
        indicators: [
          FortuneIndicator(
            child: CircleAvatar(
              backgroundColor: ConstColor.blue,
              radius: getWidth(30),
              backgroundImage: const AssetImage("assets/image/Vector.png"),
            ),
          ),
        ],
        duration: const Duration(seconds: 2),
        curve: FortuneCurve.spin,
        selected: contextt.watch<HomeCubit>().selected.stream,
        items: [
          for (var i = 0; i < 10; i++)
            FortuneItem(
              child: Text(
                "${i + 1} - Savol",
                style: MyTextStyle.textStyle(),
              ),
            ),
        ],
      ),
    );
  }
}
