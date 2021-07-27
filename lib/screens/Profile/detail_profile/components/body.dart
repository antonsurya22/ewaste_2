import 'package:ewaste/components/custom_surfix_icon.dart';
import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Profile/components/profile.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(10)),
              ProfilePicture(),
              SizedBox(height: getProportionateScreenWidth(20)),
              FormProfile()
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter{

  @override 
  void paint(Canvas canvas,Size size){
    Paint paint= Paint()..color=kPrimaryColor;
    Path path=Path()
        ..relativeLineTo(0, 150)
        ..quadraticBezierTo(size.width/2, 255, size.width, 150)
        ..relativeLineTo(0, -150)
        ..close();
        canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}

class FormProfile extends StatefulWidget {

  @override
  _FormProfileState createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  final _formKey =GlobalKey<FormState>();
  final List<String> errors=[];
  String nama;
  String email;
  String noHp;
  String alamat;

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
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildFormNama(),
            SizedBox(height: getProportionateScreenWidth(30)),
            buildFormEmail(),
            SizedBox(height: getProportionateScreenWidth(30)),
            buildFormNohp(),
            SizedBox(height: getProportionateScreenWidth(30)),
            buildFormAlamat(),
            SizedBox(height: getProportionateScreenWidth(20)),
            DefaultButton(
              text: "Simpan",
              color: kPrimaryColor,
              press: (){},
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildFormAlamat() {
    return TextFormField(
            onSaved: (newValue) => alamat = newValue,
            onChanged: (value){
              if(value.isNotEmpty){
                setState(() {
                  errors.remove(kAddressNullError);
                });
              }
              return null;
            },
            validator: (value){
              if(value.isEmpty){
                setState(() {
                  errors.add(kAddressNullError);
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan Alamat",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/Location point.svg",
              ),
            ),
          );
  }

  TextFormField buildFormNohp() {
    return TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => noHp = newValue,
            onChanged: (value){
              if(value.isNotEmpty){
                setState(() {
                  errors.remove(kPhoneNumberNullError);
                });
              }
              return null;
            },
            validator: (value){
              if(value.isEmpty){
                setState(() {
                  errors.add(kPhoneNumberNullError);
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "No Hp",
              hintText: "Masukkan No Hp",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: "assets/icons/Phone.svg",
              ),
            ),
          );
  }

  TextFormField buildFormEmail() {
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

  TextFormField buildFormNama() {
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
}