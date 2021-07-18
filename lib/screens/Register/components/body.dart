import 'package:ewaste/components/custom_surfix_icon.dart';
import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/components/form_error.dart';
import 'package:ewaste/screens/Login/login.dart';
import 'package:ewaste/screens/Register/components/register_form.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                  "assets/images/e-waste.png",
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(100),
              ),
              Text(
                "Registrasi",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Silahkan lengkapi data berikut,",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                          "sudah punya akun ?",
                           style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                          ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.popAndPushNamed(context, LoginScreen.routeName), 
                      child: Text(
                           "Login",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ), 
                  ],
              ),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

