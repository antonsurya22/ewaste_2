import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/screens/Login/login.dart';
import 'package:ewaste/screens/Register/Register.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(25)),
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
          child: Column(
            children: <Widget>[
              Spacer(),
              Image.asset(
                "assets/images/e-waste.png",
                height: getProportionateScreenHeight(150),
                width: getProportionateScreenWidth(150),
              ),
              Text(
                "Ubah Sampah Jadi Rupiah",
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(
                "Selamat Datang!", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Silahkan Login untuk menggunakan aplikasi E-Waste, jika belum mempunyai akun bisa Registrasi terlebih dahulu",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              DefaultButton(
                    text: "Login",
                    color: kSecondaryColor,
                    press: (){
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              DefaultButton(
                    text: "Register",
                    color: kPrimaryColor,
                    press: (){
                      Navigator.pushNamed(context, Register.routeName);
                    },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}