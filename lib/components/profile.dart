import 'package:flutter/material.dart';

import '../size_config.dart';

class Profile extends StatelessWidget {
   Profile({
     this.namaProfil,
    Key key,
  }) : super(key: key);

   final String namaProfil;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(50),
      child: Column(
        children: [
          Row(
            children: [
            CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.black,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(50),
                    child: Image.asset("assets/images/andi.png", 
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )
            ),
            SizedBox(width: getProportionateScreenWidth(10),),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  "Andi Suartika",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: getProportionateScreenWidth(14),
                     fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.5,
                  child: Text(
                    "Jalan Pratu Praupan Sangket, Sukasada",
                    style: TextStyle(fontSize: getProportionateScreenWidth(11)),
                  ),
                )
              ],
            ),
            ],  
          ),
        ],
      ),
    );
  }
}