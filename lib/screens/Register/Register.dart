import 'package:flutter/material.dart';

import 'components/body.dart';

class Register extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Registrasi"),
      ),
      body: Body(),
    );
  }
}