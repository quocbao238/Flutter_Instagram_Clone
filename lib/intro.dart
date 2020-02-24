import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/login.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);
  Color containerColor = Color.fromRGBO(35, 35, 35, 1.0);
  Color textColor = Colors.grey[400];

  double _opacity1 = 1.0, _opacity2 = 1.0, _opacity3 = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50.0,
              // child: Placeholder(),
            ),
            Container(
              height: 100.0,
              child: GestureDetector(
                child: AnimatedOpacity(
                  opacity: 1.0,
                  duration: Duration(seconds: 1),
                  child: Image(image: AssetImage('assets/iconintro.png')),
                ),
                onTap: () {
                  setState(() {
                    this._opacity2 = 1.0 - this._opacity2;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              height: 50.0,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'from',
                      style: TextStyle(fontSize: 18.0, color: Colors.white70),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 24.0,
                          letterSpacing: 2.0,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}

class IconCustom extends StatelessWidget {
  final size;
  final urlIcon;
  IconCustom(this.urlIcon, this.size);
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Container(
        child: Image(
          image: AssetImage(
            urlIcon,
          ),
          fit: BoxFit.cover,
          // color: Colors.white70,
        ),
        width: size,
      ),
    );
  }
}
