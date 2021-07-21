import 'package:ewaste/screens/Home/home_screen.dart';
import 'package:ewaste/screens/Login/components/body.dart';
import 'package:ewaste/screens/Login/login.dart';
import 'package:ewaste/screens/Login_Register/login_register.dart';
import 'package:ewaste/screens/Login_Success/Login_Succes.dart';
import 'package:ewaste/screens/Lupa_Password/lupa_password_screen.dart';
import 'package:ewaste/screens/Register/Register.dart';
import 'package:ewaste/screens/search/search_screan.dart';
import 'package:ewaste/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginRegister.routeName: (context) => LoginRegister(),
  LoginScreen.routeName: (context) => LoginScreen(),
  LupaPasswordScreen.routeName: (context) => LupaPasswordScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  Register.routeName: (context) => Register(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
};