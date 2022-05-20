import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: getHeight(15),
          mainAxisExtent: getHeight(250),
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: index.isEven ? getWidth(15): getHeight(8),right:index.isEven ? getWidth(8): getHeight(15) ),
            color: ConstColor.blue,
          );
        },
      ),
    );
  }
}
