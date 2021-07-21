import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CategorySampah extends StatelessWidget {
  const CategorySampah({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kenali Sampahmu",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
              Categories(),
            ],
          ),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/organic.svg", "text": "Organik"},
      {"icon": "assets/icons/plastic.svg", "text": "Plastik"},
      {"icon": "assets/icons/glass.svg", "text": "Kaca"},
      {"icon": "assets/icons/paper.svg", "text": "Kertas"},
      {"icon": "assets/icons/metal.svg", "text": "Besi"},
    ];
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length, 
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {}),
          ),
        ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon, 
    @required this.text, 
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgPicture.asset(icon, color: kPrimaryColor,),
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}