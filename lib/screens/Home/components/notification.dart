import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconNotif extends StatelessWidget {
  const IconNotif({
    Key key,
    @required this.svgSrc,
    this.numOfItems = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white)
                ),
                child: Center(
                  child: Text(
                    "$numOfItems", 
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                      ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}