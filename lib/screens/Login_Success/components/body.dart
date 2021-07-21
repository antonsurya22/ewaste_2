import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Home/home_screen.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Berhasil!",
           style: TextStyle(
             fontSize: getProportionateScreenWidth(30),
             fontWeight: FontWeight.bold,
             color: Colors.black),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.8,
          child: DefaultButton(
            text: "Selanjutnya",
            color: kPrimaryColor,
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}