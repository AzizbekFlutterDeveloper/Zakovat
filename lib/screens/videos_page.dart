import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              height: getHeight(160),
              width: getHeight(343),
              margin: EdgeInsets.all(getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: ConstColor.blue,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/video', arguments: "yQbg1yfxplY");
            },
          );
        },
      ),
    );
  }
}
