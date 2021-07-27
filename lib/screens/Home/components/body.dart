import 'package:ewaste/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';
import 'banner_slider.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        // header
        child: Container(
          height: SizeConfig.screenHeight*0.9,
          color: Color(0xFFE5E5E5),
          child: ListView(
            children: [
              HomeHeader(),
              BannerSlider(),
              CategorySampah(),
              SizedBox(height: getProportionateScreenWidth(20)),   
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artikel,",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(5)), 
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.25,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: SizeConfig.screenHeight * 0.2,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0,4),
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.25),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/artikel1.png",
                            height: getProportionateScreenWidth(120),
                          ),
                          Positioned(
                            left: 130,
                            width: MediaQuery.of(context).size.width - 170,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              height: SizeConfig.screenHeight * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget> [
                                  Text(
                                    "Pilah Sampahmu",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  SizedBox(height: getProportionateScreenWidth(5)),
                                  Text(
                                    "Pastikan kamu selalu memilih sampahmu sesuai dengan jenisnya.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                    Icons.chevron_right,
                                    color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}

