import 'package:ewaste/components/custom_surfix_icon.dart';
import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/components/form_error.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text(
                "Lupa Kata Sandi",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Masukkan Email anda, kami akan mengirimkan link \nuntuk mengganti kata sandi anda",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              LupaPasswordForm(),
            ]
          ),
        ),
      ),
    );
  }
}

class LupaPasswordForm extends StatefulWidget {

  @override
  _LupaPasswordFormState createState() => _LupaPasswordFormState();
}

class _LupaPasswordFormState extends State<LupaPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
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
                }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
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
            ),
            SizedBox(height: getProportionateScreenHeight(30),),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.1,),
            DefaultButton(
              text: "Kirim",
              color: kPrimaryColor,
              press: (){
                if(_formKey.currentState.validate()){
                  // kirim email
                }
              },
            ),
        ],
      ),
    );
  }
}