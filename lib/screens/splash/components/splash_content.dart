import 'package:flutter/material.dart';

import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         Spacer(flex: 2),
         Image.asset(
           "assets/images/e-waste.png",
           height: getProportionateScreenHeight(150),
           width: getProportionateScreenWidth(150),
         ),
         Spacer(),
         Text(
           text,
           textAlign: TextAlign.center,
         ),
         Spacer(flex: 2),
         Image.asset(
           image,
           height: getProportionateScreenHeight(265),
           width: getProportionateScreenWidth(235),
         ),
      ],
    );
  }
}