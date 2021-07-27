import 'package:ewaste/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailProfile extends StatelessWidget {
  static String routeName = '/detail_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile",style: TextStyle(color: Colors.white),),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}