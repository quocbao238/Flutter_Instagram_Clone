import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/profile.dart';
import 'home.dart';

void main() {
  Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark, // navigation bar color
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark, // status bar color
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Home(),
    home: Profile(),
  ));
}
