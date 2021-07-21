import 'package:ewaste/components/bottomNavBar.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: BottomNavBar(selectedItem: 0,),
      body: Body(),
    );
  }
}
