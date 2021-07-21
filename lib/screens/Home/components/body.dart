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
          height: SizeConfig.screenHeight,
          color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              HomeHeader(),
              BannerSlider(),
              CategorySampah(),       
            ],
          ),
        ),
      ),
    );
  }
}

