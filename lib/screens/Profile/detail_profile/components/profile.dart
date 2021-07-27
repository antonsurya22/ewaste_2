import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          painter: HeaderCurvedContainer(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width/2.5,
              height: MediaQuery.of(context).size.width/2.5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/andi.png")
                )
              ),
            )
          ],
        ),
        Positioned(
            left: SizeConfig.screenWidth*0.6,
            top: SizeConfig.screenHeight*0.3,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: SvgPicture.asset("assets/icons/Camera.svg"),
              ),
            ),
          )
      ],
    );
  }
}

class HeaderCurvedContainer extends CustomPainter{

  @override 
  void paint(Canvas canvas,Size size){
    Paint paint= Paint()..color=kPrimaryColor;
    Path path=Path()
        ..relativeLineTo(0, 150)
        ..quadraticBezierTo(size.width/2, 255, size.width, 150)
        ..relativeLineTo(0, -150)
        ..close();
        canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}