import 'package:flutter/material.dart';

import '../../../size_config.dart';


class BannerSlider extends StatelessWidget {
  const BannerSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Slider(
                text1: "Sampah Jadi",
                text2: "Rupiah",
                bg: "assets/images/rumput.png",
                image: "assets/images/Psampah.png",
                press: (){},
              ),
              Slider(
                text1: "Selamatkan Bumi",
                text2: "Mulai dari diri sendiri",
                bg: "assets/images/rumput.png",
                image: "assets/images/Psepeda.png",
                press: (){},
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key key, 
    @required this.text1, 
    @required this.text2, 
    @required this.bg, 
    @required this.image, 
    @required this.press,
  }) : super(key: key);

  final String text1, text2, bg, image;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: getProportionateScreenWidth(5)),
      child: SizedBox(
        child: Expanded(
          child: Stack(
            children: <Widget> [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)
                ),
                height: SizeConfig.screenHeight * 0.25,
                width: SizeConfig.screenWidth * 0.9,
                child: Container(
                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.25),
                  margin: EdgeInsets.only(
                    top: getProportionateScreenWidth(20),
                     bottom: getProportionateScreenWidth(10)
                     ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(bg),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter
                    ),
                  ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(24),
                        fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.bold),
                    ),              
                  ],
                ),
                ),
              ),
              Positioned(
                top: getProportionateScreenWidth(10),
                left: 0,
                child:   Container(
                  margin: EdgeInsets.symmetric(
                     horizontal: getProportionateScreenWidth(15)
                  ),
                  width: SizeConfig.screenWidth*0.3,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
