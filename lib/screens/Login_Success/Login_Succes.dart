import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text("Login Berhasil"),
      ),
      body: Body(),
      
    );
  }
}