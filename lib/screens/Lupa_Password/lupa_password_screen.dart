import 'package:ewaste/screens/Lupa_Password/components/body.dart';
import 'package:flutter/material.dart';

class LupaPasswordScreen extends StatelessWidget {
  static String routeName = "/lupa_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lupa Kata Sandi"),
      ),
      body: Body(),
    );
  }
}