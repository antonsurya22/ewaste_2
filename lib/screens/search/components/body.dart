import 'package:ewaste/components/search_box.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: SingleChildScrollView(
         child: Container(
          height: SizeConfig.screenHeight*0.9,
          color: Color(0xFFE5E5E5),
           child: Column(
             children: [
               Row(
                 children: [
                   SearchBox(),
                 ],
              ),
              SizedBox(height: getProportionateScreenWidth(100)),
              Image.asset(
                "assets/images/search.png",
                width: getProportionateScreenWidth(150),
              ),
              SizedBox(height: getProportionateScreenWidth(50)),
              Text(
                "Cari Masyarakat yang sudah \nterdaftar di E-Waste",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14)
                ),
                textAlign: TextAlign.center,
              )
             ],
           ),
         ),
       ),
    );
  }
}

