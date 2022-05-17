import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:zakovat/core/complements/text_style.dart';
import 'package:zakovat/core/constans/color_cons.dart';
import 'package:zakovat/core/size_config/size_config.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      drawer: Drawer(
        backgroundColor: Color(0xff15192C),
        child: Column(
          children: [
            Container(
              height: getHeight(200),
              color: ConstColor.scaffoldColor,
              child: Image.asset("assets/image/bg_no 1.png"),
            ),
          ],
        ),
      ),
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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(400),
                child: GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(getHeight(10)),
                        padding: EdgeInsets.only(top: getHeight(80),left: getWidth(15)),
                        decoration:  BoxDecoration(
                          borderRadius: const  BorderRadius.all(Radius.circular(10)),
                          color: ConstColor.blue,
                          image: const DecorationImage(fit: BoxFit.cover,image: CachedNetworkImageProvider("https://www.gazeta.uz/media/img/2021/12/YdKtD816402585222443_l.jpg"))
                        ),
                        child: Text("Zakovat savollari",style: MyTextStyle.textStyleMain(),),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, '/bolim');
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(20)),
                child: Text(
                  "Yangiliklar",
                  style: MyTextStyle.textStyleBold(),
                ),
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, index1) {
                  return Container(
                    height: getHeight(200),
                    width: getWidth(343),
                    margin: EdgeInsets.all(getHeight(10)),
                    padding: EdgeInsets.only(top: getHeight(170),left: getWidth(20)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: ConstColor.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider("https://cdn.dribbble.com/users/56718/screenshots/1495105/dribbble.jpg?compress=1&resize=400x300"),
                      ),
                    ),
                    child: Text("Reclama uchun Joy",style: MyTextStyle.textStyleBold(),),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                  height: getHeight(230),
                ),
              ),
            ],
          ),
          // Positioned(
          //   child: Center(
          //     child: Lottie.network("https://assets2.lottiefiles.com/private_files/lf30_f495l0im.json"),
          //   )
          // ),
        ],
      ),
    );
  }
}
