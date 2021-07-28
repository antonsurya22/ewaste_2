import 'package:ewaste/constants.dart';
import 'package:ewaste/routs.dart';
import 'package:ewaste/screens/Home/home_screen.dart';
import 'package:ewaste/screens/splash/splash_screen.dart';
import 'package:ewaste/theme.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(MyApp());
}

String namaProfil = '';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Waste',
      theme: theme(),
      // home: HomeScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
