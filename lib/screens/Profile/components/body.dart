import 'package:ewaste/constants.dart';
import 'package:ewaste/screens/Profile/components/profile.dart';
import 'package:ewaste/screens/Profile/detail_profile/detail_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "Akun Saya",
          press: (){
            Navigator.pushNamed(context, DetailProfile.routeName);
          },
        ),
        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Pengaturan",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Bantuan",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Keluar",
          press: (){},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key, 
    @required this.text, 
    @required this.icon, 
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

