import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zakovat/bloc/home_cubit.dart';
import 'package:zakovat/bloc/home_state.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';
import 'package:lottie/lottie.dart';
import 'package:zakovat/widgets/fortuna_widget.dart';

class FortunaPage extends StatelessWidget {
  const FortunaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scafold(context);
        },
      ),
    );
  }

  Scaffold scafold(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      appBar: AppBar(backgroundColor: ConstColor.scaffoldColor),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(width: double.infinity),
              Container(
                    height: getHeight(36),
                    width: getWidth(125),
                    margin: EdgeInsets.only(bottom: getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: ConstColor.blue,
                    ),
                    child: Center(
                      child: Text("1 - Raund",style: MyTextStyle.textStyle(size: 20)),
                    ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: getHeight(36),
                    width: getWidth(125),
                    decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text("Noto'g'ri: 0",style: MyTextStyle.textStyle(size: 20)),
                    ),
                  ),
                  Container(
                    height: getHeight(36),
                    width: getWidth(125),
                    decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("To'g'ri: 0",style: MyTextStyle.textStyle(size: 20)),
                    ),
                  ),
                ],
              ),
              Fortuna(contextt: context),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: getHeight(50)),
                  height: getHeight(50),
                  width: getWidth(180),
                  decoration: BoxDecoration(
                    borderRadius: const  BorderRadius.all(Radius.circular(20)),
                    color: ConstColor.blue
                  ),
                  child: Center(
                    child: Text("Boshlash",style: MyTextStyle.textStyleMain(),),
                  ),
                ),
                onTap: (){
                  context.read<HomeCubit>().addSelect();
                  Navigator.pushNamed(context, '/quiz');
                },
              ),
              // SizedBox(height: getHeight(100),width: getWidth(300),child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_fyye8szy.json",fit: BoxFit.cover)),
            ],
          ),
          Positioned(
            child: Visibility(
              visible: false,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.9),
                child: SizedBox(
                  child: LottieBuilder.network(
                      "https://assets2.lottiefiles.com/packages/lf20_a2chheio.json"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
