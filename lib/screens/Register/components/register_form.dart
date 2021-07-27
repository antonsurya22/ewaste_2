import 'package:ewaste/components/custom_surfix_icon.dart';
import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String nama;
  String nohp;
  String alamat;
  String password;
  String confirm_password;
  String email;
  final List<String> errors = [];

  void addError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(25)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(25)),
          DefaultButton(
            text: "Registrasi",
            color: kPrimaryColor,
            press: (){
              if(_formKey.currentState.validate()){
                // registrasi berhasil
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
        onSaved: (newValue) => nama = newValue,
        onChanged: (value){
          if(value.isNotEmpty && errors.contains(kNamelNullError)){
            setState(() {
              errors.remove(kNamelNullError);
            });
          }
          return null;
        },
        validator: (value){
          if(value.isEmpty && !errors.contains(kNamelNullError)){
            setState(() {
              errors.add(kNamelNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Nama",
          hintText: "Masukkan Nama",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/user.svg",
          ),
        ),
      );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirm_password = newValue,
        onChanged: (value){
          if(password == value){
            setState(() {
              errors.remove(kMatchPassError);
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
          }else if(password != value){
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Konfirmasi Kata Sandi",
          hintText: "Masukkan Ulang Kata Sandi",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          ),
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
          password = value;
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