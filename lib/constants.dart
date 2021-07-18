import 'package:flutter/material.dart';
// import 'package:shop_app/size_config.dart';


const kPrimaryColor = Color(0xff27AE60);
const kPrimaryLightColor = Color(0xFF96EEBB);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xff00AF4A), Color(0xFFD3FCE4)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// form validation
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Masukkan Email Anda";
const String kInvalidEmailError = "Email tidak Valid";
const String kPassNullError = "Masukkan Kata Sandi Anda";
const String kShortPassError = "Kata Sandi terlalu Pendek";
const String kMatchPassError = "Kata Sandi tidak cocok";
const String kNamelNullError = "Masukkan Nama Anda";
const String kPhoneNumberNullError = "Masukkan Nomor Anda";
const String kAddressNullError = "Masukkan Alamat Anda";