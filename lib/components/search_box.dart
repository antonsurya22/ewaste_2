import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getProportionateScreenWidth(70),
           decoration: BoxDecoration(
             color: Colors.white,
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.03),
                 spreadRadius: 0,
                 blurRadius: 5,
                 offset: Offset(0, 3),
               )
             ]
           ),
         child: Padding(
         padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
           child: Row(
               children: <Widget>[
                 Container(
                   width: SizeConfig.screenWidth * 0.9,
                   decoration: BoxDecoration(
                     color: kTextColor.withOpacity(0.15),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: TextField(
                     onChanged: (value){
                       
                     },
                     decoration: InputDecoration(
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none,
                       hintText: "Cari Masyarakat",
                       prefixIcon: Icon(Icons.search, color: kTextColor,),
                       contentPadding: EdgeInsets.symmetric(
                         horizontal: getProportionateScreenWidth(20),
                         vertical: getProportionateScreenWidth(9)
                       )
                     ),
                   ),
                 )
               ],
             ),
         ),
       );
  }
}