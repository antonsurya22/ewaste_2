import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Home/home_screen.dart';
import 'package:ewaste/screens/search/search_screan.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedItem;
  const BottomNavBar({Key key, this.selectedItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30), vertical: 15),
      height: SizeConfig.screenHeight * 0.13,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, -5),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavitem(
              svgScr: "assets/icons/home.svg",
              title: "Home",
              press: () =>  Navigator.pushNamed(context, HomeScreen.routeName),
              index: 0,
              isActive: selectedItem,
            ),
            BottomNavitem(
              svgScr: "assets/icons/search.svg",
              title: "Cari",
              press: () =>  Navigator.pushNamed(context, SearchScreen.routeName),
              index: 1,
              isActive: selectedItem,
            ),
            BottomNavitem(
              svgScr: "assets/icons/receipt.svg",
              title: "Riwayat",
              press: (){},
              index: 2,
              isActive: selectedItem,
            ),
            BottomNavitem(
              svgScr: "assets/icons/user.svg",
              title: "Saya",
              press: (){},
              index: 3,
              isActive: selectedItem,
            ),
          ],
        ),
    );
  }
}

class BottomNavitem extends StatelessWidget {
  const BottomNavitem({
    Key key, 
    @required this.svgScr, 
    @required this.title, 
    @required this.press, 
    this.isActive,
    this.index,
  }) : super(key: key);

  final String svgScr,title;
  final Function press;
  final int isActive;
  final int index;

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgScr,
          width: 30,
          color: index == isActive ? kPrimaryColor : kTextColor,),
          Text(
            title,
            style: TextStyle(
              color: index == isActive ? kPrimaryColor : kTextColor,
            ),
          ),
      ],),
    );
  }
}

