import 'package:animations/animations.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Home/home_screen.dart';
import 'package:ewaste/screens/Profile/profile_screen.dart';
import 'package:ewaste/screens/Riwayat/riwayat_screen.dart';
import 'package:ewaste/screens/search/search_screan.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/main_screen' ;
  

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomeScreen(),
    SearchScreen(),
    RiwayatScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
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
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(color: kPrimaryColor),
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kTextColor.withOpacity(0.5),
            currentIndex: pageIndex,
            onTap: (value){
              setState(() {
                pageIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon:  Icon(IconData(0xe900, fontFamily: 'navBarIcons')),
                label: "Beranda",
                ),
              BottomNavigationBarItem(
                icon:  Icon(IconData(0xe902, fontFamily: 'navBarIcons')),
                label: "Cari",
                ),
              BottomNavigationBarItem(
                icon:  Icon(IconData(0xe901, fontFamily: 'navBarIcons')),
                label: "Riwayat",
                ),
              BottomNavigationBarItem(
                icon:  Icon(IconData(0xe903, fontFamily: 'navBarIcons')),
                label: "Saya",
              ),
            ],
        ),
        ),
        body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) => FadeThroughTransition(
            animation: primaryAnimation, 
            secondaryAnimation: secondaryAnimation,
            child: child,
            ),
          child: pageList[pageIndex],
        ),
    );
  }
}