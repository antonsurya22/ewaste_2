import 'package:ewaste/components/profile.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'notification.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]
        ),
      child: Padding(
      padding:  EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Profile(),
              // notification icon
              IconNotif(
                svgSrc: "assets/icons/Bell.svg",
                numOfItems: 3,
                press: (){},
              ),
            ],
          ),
      ),
    );
  }
}
