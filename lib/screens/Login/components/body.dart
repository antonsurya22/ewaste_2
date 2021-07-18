import 'package:ewaste/components/custom_surfix_icon.dart';
import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/components/form_error.dart';
import 'package:ewaste/components/lupa_password_text.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Login_Success/Login_Succes.dart';
import 'package:ewaste/screens/Register/Register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(25)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/e-waste.png",
                    height: getProportionateScreenHeight(150),
                    width: getProportionateScreenWidth(150),
                  ),
                  Text(
                    "-Ubah Sampah Jadi Rupiah-",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Text(
                    "Login!", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Silahkan Masukkan Email dan kata sandi anda.",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun? ",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(12),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.popAndPushNamed(context, Register.routeName),
                        child: Text(
                          "Registrasi dulu.",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: kPrimaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ), 
                    ],
                  ), 
                  SizedBox(height: getProportionateScreenHeight(25),),
                  LoginForm(), 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20),),
          DefaultButton(
            text: "Login",
            color: kPrimaryColor,
            press: (){
              if (_formKey.currentState.validate()){
                _formKey.currentState.save();
                // jika validasi berhasil login success
                Navigator.pushNamed(context, LoginSuccess.routeName);
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(10),),
          LupaPassword(),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue,
          onChanged: (value){
            if(value.isNotEmpty && errors.contains(kPassNullError)){
              setState(() {
                errors.remove(kPassNullError);
              });
            }
            return null;
          },
          validator: (value){
            if(value.isEmpty && !errors.contains(kPassNullError)){
              setState(() {
                errors.add(kPassNullError);
              });
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Kata Sandi",
            hintText: "Masukkan Kata Sandi",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            ),
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value){
            if(value.isNotEmpty && errors.contains(kEmailNullError)){
              setState(() {
                errors.remove(kEmailNullError);
              });
            }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },
          validator: (value){
            if(value.isEmpty && !errors.contains(kEmailNullError)){
              setState(() {
                errors.add(kEmailNullError);
              });
              return "";
            }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Masukkan Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            ),
          ),
        );
  }
}



