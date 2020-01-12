import 'package:flutter/material.dart';
import 'package:instagram_clone/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /* Color */
  Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);
  Color containerColor = Color.fromRGBO(35, 35, 35, 1.0);
  Color spaceColor = Color.fromRGBO(50, 50, 50, 1.0);
  Color iconConlor = Color.fromRGBO(65, 65, 65, 1.0);
  Color textColor = Colors.grey[400];
  Color nameColor = Colors.grey[200];

  /* Margin - padding*/
  double marginSize = 12.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              // Fill color
              Container(
                height: 650,
                child: ClipPath(
                  clipper: new DialogonalClipper(),
                  child: Container(
                    color: spaceColor,
                  ),
                ),
              ),
              /*  Body */
              Container(
                height: 600.0,
                // width: 350.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /* Top English */
                    Container(
                        // margin: EdgeInsets.only(right: marginSize),
                        height: 40.0,
                        child: Stack(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child:
                                  // Placeholder(),
                                  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'English',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    size: 30.0,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.topEnd,
                              margin: EdgeInsets.only(right: marginSize),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.white70,
                                size: 40.0,
                              ),
                            )
                          ],
                        )),
                    SizedBox(height: 30.0),
                    /* Instagram Logo */
                    Container(
                      height: 120.0,
                      // color: Colors.red,
                      child: Center(
                          child: IconCustom(
                        'assets/nameinsta.png',
                        250.0,
                        Colors.white,
                      )),
                    ),
                    SizedBox(height: 20.0),
                    /* Login Screen Base */
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.0),
                            color: containerColor),
                        height: 380.0,
                        width: 300.0,
                        child: Column(
                          children: <Widget>[
                            /* Facebook Tittle */
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28.0),
                                    topRight: Radius.circular(28.0)),
                                color: Colors.blueAccent[400],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: marginSize * 2),
                                      child: IconCustom('assets/facebook.png',
                                          18.0, Colors.white)),
                                  SizedBox(width: marginSize * 3),
                                  Text(
                                    'Continue With Facebook',
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            /* -OR- */
                            Container(
                              margin: EdgeInsets.only(top: marginSize * 2),
                              height: 20.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 130.0,
                                    height: 1.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    'OR',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    width: 130.0,
                                    height: 1.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                            /* User name & Pass word & Login & Forgot*/
                            Container(
                              height: 40.0,
                              margin: EdgeInsets.only(
                                  top: marginSize * 2,
                                  left: marginSize * 0.5,
                                  right: marginSize * 0.5),
                              padding: EdgeInsets.only(left: marginSize),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[700],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white70,
                                  ),
                                  labelText: 'Phone number, username, or email',
                                  labelStyle: TextStyle(
                                      fontSize: 14.0, color: Colors.white70),
                                ),
                                onSaved: (String value) {},
                                validator: (String value) {},
                              ),
                            ),

                            /* Password */
                            Container(
                              height: 40.0,
                              padding: EdgeInsets.only(left: marginSize),
                              margin: EdgeInsets.only(
                                  top: marginSize,
                                  left: marginSize * 0.5,
                                  right: marginSize * 0.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[700],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.white70,
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontSize: 14.0, color: Colors.white70),
                                ),
                                onSaved: (String value) {},
                                validator: (String value) {},
                              ),
                            ),

                            /* Login Button */
                            Container(
                              margin: EdgeInsets.only(
                                top: marginSize * 3,
                                left: marginSize * 2,
                                right: marginSize * 2,
                              ),
                              height: 40,
                              width: 300,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  // side: BorderSide(color: Colors.red)
                                ),
                                color: Colors.blueAccent[400],
                                textColor: Colors.white,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ));
                                },
                              ),
                            ),

                            /* Forgot password */
                            SizedBox(
                              height: 50.0,
                            ),
                            Text(
                              'Forgot password?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          /* Register */
          Center(
            child: Container(
              height: 80,
              width: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: containerColor),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Do you want to register?',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    // /* Left Bot */
    path.lineTo(0, size.height - 50);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class IconCustom extends StatelessWidget {
  final size;
  final urlIcon;
  final Color color;
  IconCustom(this.urlIcon, this.size, this.color);
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Container(
        child: Image(
          image: AssetImage(
            urlIcon,
          ),
          fit: BoxFit.fill,
          color: color,
        ),
        width: size,
      ),
    );
  }
}
