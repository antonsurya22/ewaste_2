import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Lupa_Password/lupa_password_screen.dart';
import 'package:flutter/material.dart';
import '../size_config.dart';

class LupaPassword extends StatelessWidget {
  const LupaPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, LupaPasswordScreen.routeName),
          child:         
            Text(
              "Lupa Kata Sandi?",
              style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      color: kPrimaryColor,
              ),
            ),
        )
      ],
    );
  }
}