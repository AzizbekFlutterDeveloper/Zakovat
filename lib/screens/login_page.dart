
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zakovat/bloc/home_cubit.dart';
import 'package:zakovat/bloc/home_state.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/list_data/list_data.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit,HomeState>(
        listener: (context, state) {},
        builder: (context,state){
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    int index = context.watch<HomeCubit>().index;
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
    body: Column(
      children: [
        Expanded(
          child: Image.asset(splash[index]["img"]),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(width: double.infinity,),
              Text(
                splash[index]['name'],
                style: MyTextStyle.textStyleMain()
              ),
              SizedBox(height: getHeight(19)),
              SizedBox(
                height: getHeight(46),
                width: getWidth(266),
                child: Text(
                  splash[index]['subtitle'],
                  textAlign: TextAlign.center,
                  style: MyTextStyle.textStyleNormal()
                ),
              ),
              SizedBox(height: getHeight(53)),
              DotsIndicator(
                dotsCount: 3,
                position: index.toDouble(),
                decorator: DotsDecorator(
                  activeColor: ConstColor.blue,
                  size: const Size.square(20.0),
                  activeSize: const Size(36.0, 20.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: getHeight(35)),
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: ConstColor.blue,
                  radius: getWidth(40),
                  child: Icon(Icons.arrow_forward_ios_outlined,size: getWidth(40),color: ConstColor.white,),
                ),
                onTap: (){
                  if(index > 1){
                    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                  }else{
                    context.read<HomeCubit>().addIndex();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }
}
