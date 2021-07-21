import 'package:ewaste/components/bottomNavBar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedItem: 1,),
    );
  }
}