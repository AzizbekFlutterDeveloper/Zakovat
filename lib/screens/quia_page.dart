import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_timer/simple_timer.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with SingleTickerProviderStateMixin {
  TimerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TimerController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ConstColor.scaffoldColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/image/charm_share.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(width: double.infinity),
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: getWidth(40),
              child: SimpleTimer(
                controller: _controller,
                timerStyle: TimerStyle.ring,
                progressIndicatorColor: ConstColor.scaffoldColor,
                backgroundColor: ConstColor.blue,
                progressIndicatorDirection:
                    TimerProgressIndicatorDirection.clockwise,
                progressTextStyle: MyTextStyle.textStyleBold(),
                duration: Duration(seconds: 10),
              ),
            ),
            onTap: () {
              _controller!.start();
            },
            onDoubleTap: () {
              _controller!.restart();
            },
          ),
          SizedBox(
            width: getWidth(343),
            child: Center(
              child: Text(
                "Daraxtning shoxida qarg’a o’tiribdi. Qarg’ani cho’chitib yubormasdan shoxni arralash uchun nima qilish kerak?",
                textAlign: TextAlign.center,
                style: MyTextStyle.textStyle(size: 23),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: getHeight(8)),
              width: getHeight(343),
              height: getHeight(1.5),
              color: ConstColor.white),
          Padding(
            padding: EdgeInsets.all(getHeight(20)),
            child: TextFormField(
              style: MyTextStyle.textStyle(size: 20),
              decoration: InputDecoration(
                  hintText: "Javobni kiriting",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontSize: getWidth(23))),
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: getHeight(30)),
            height: getHeight(46),
            width: getWidth(343),
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.all(Radius.circular(20)),
              color: ConstColor.blue,
            ),
            child: Center(child: Text("Tekshirish",style: MyTextStyle.textStyleBold(),)),
          ),
        ],
      ),
    );
  }
}
