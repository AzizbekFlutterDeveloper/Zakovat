import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class BolimPage extends StatelessWidget {
  const BolimPage({ Key? key }) : super(key: key);

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
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/image/search.svg"),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: getHeight(135)), 
        itemBuilder: (context,index){
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.all(getHeight(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: ConstColor.blue,
              ),
              child: Center(
                child: Text("${index + 1} - Bo'lim",
                 style: MyTextStyle.textStyleBold(),
                ),
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, '/fortuna');
            },
          );
        }
      ),
    );
  }
}