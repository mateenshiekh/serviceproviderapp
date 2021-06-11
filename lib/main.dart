import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Call Out',
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorBrightness: Brightness.dark,
        accentColor: secondaryColor,
        fontFamily: "arial",
        accentColorBrightness: Brightness.light,
        buttonTheme: ButtonThemeData(
          buttonColor: secondaryColor,
          splashColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: appBarLightColor,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        fontFamily: "arial",
        primaryColorBrightness: Brightness.dark,
        accentColor: secondaryColor,
        accentColorBrightness: Brightness.light,
        buttonTheme: ButtonThemeData(
          buttonColor: secondaryColor,
          splashColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        appBarTheme: AppBarTheme(
          color: appBarDarkColor,
          brightness: Brightness.dark,
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: SplashPage(),
    );
  }
}
