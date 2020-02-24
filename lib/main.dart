import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/profile.dart';
import 'package:instagram_clone/login.dart';
import 'demo.dart';
import 'home.dart';
import 'intro.dart';

void main() {
  Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);
  // SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: backgroundColor,
    systemNavigationBarIconBrightness: Brightness.light, // navigation bar color
    statusBarColor: backgroundColor,
    statusBarIconBrightness: Brightness.light, // status bar color
  ));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Intro(),
    // home: Home(),
    // home: LoginScreen(),
    // home: Profile(),
    // home: MyHomePage(title: 'Demo Tittle',),
  ));
}
