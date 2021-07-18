import 'package:ewaste/components/default_button.dart';
import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Login_Register/login_register.dart';
import 'package:ewaste/screens/splash/components/splash_content.dart';
import 'package:ewaste/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text" : "Selamat Datang di E-Waste!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text" : "Sayangi Lingkungan, mulai dari diri Sendiri",
      "image": "assets/images/splash_2.png"
    },
    {
      "text" : "Ubah Sampah Jadi Rupiah",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
        children: <Widget>[
         Expanded(
           flex: 5,
           child: PageView.builder(
             onPageChanged: (value){
               setState(() {
                 currentPage = value;
               });
             },
             itemCount: splashData.length,
             itemBuilder: (context, index) => SplashContent(
             image: splashData[index]["image"],
             text: splashData[index]["text"]
              ),
            ), 
          ),
          Expanded(
            flex: 2,
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length, (index) => buildDot(
                        index: index,
                      ),
                    ),
                  ),
                  Spacer(flex: 3,),
                  DefaultButton(
                    text: "Selanjutnya",
                    color: kPrimaryColor,
                    press: (){
                      Navigator.pushNamed(context, LoginRegister.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
            ),
        ],
        ),
      ),
    );
    
  }
  AnimatedContainer buildDot({int index}){
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage ==  index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}






