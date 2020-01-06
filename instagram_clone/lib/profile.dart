import 'package:flutter/material.dart';

// https://dribbble.com/shots/8514579/attachments/799201?mode=media

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  /* Color */
  Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);
  Color containerColor = Color.fromRGBO(35, 35, 35, 1.0);
  Color iconConlor = Color.fromRGBO(65, 65, 65, 1.0);
  Color textColor = Colors.grey[400];
  Color nameColor = Colors.grey[200];
  /* Margin - padding*/
  double marginSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          /* Top Instagram */
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              color: containerColor
            ),
            height: 310.0,
            child: Row(
              children: <Widget>[
                Container()
              ],
            ),
            // child: Placeholder(),
          ),
          /* Center */
          Container(
            height: 50,
            margin: EdgeInsets.only(top: marginSize*2,left: marginSize*2,right: marginSize*2),
            child: Placeholder(),
          ),
          Container(
            margin: EdgeInsets.only(top: marginSize*2),
            height: 339,
            child: Placeholder(),
          ),
          BottomBar(containerColor: containerColor,iconConlor: iconConlor,)
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
    @required this.containerColor,
    @required this.iconConlor,
  }) : super(key: key);

  final Color containerColor;
  final Color iconConlor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: AlignmentDirectional.centerEnd,
      width: 350,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42), color: containerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white70),
          Icon(Icons.search, size: 30, color: Colors.white70),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 2.0, color: Colors.white)),
            child: Icon(Icons.add, size: 25, color: iconConlor),
          ),
          Icon(Icons.favorite_border, size: 30, color: Colors.white70),
          IconCustom('assets/user.png',25.0)
        ],
      ),
    );
  }
}

class MyStoryAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    image:
                        DecorationImage(image: AssetImage('assets/nacy.png')),
                  ),
                ),
              ],
            ),
            Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.add,
                  size: 15.0,
                ))
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Your Story',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 14.0,
          ),
        )
      ],
    );
  }
}

class StoryAvatar extends StatelessWidget {
  final name;
  final urlIcon;

  StoryAvatar({this.name, this.urlIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Colors.red,
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64),
                image: DecorationImage(image: AssetImage(urlIcon)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white60,
            fontSize: 14.0,
          ),
        )
      ],
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
          color: Colors.white70,
        ),
        width: size,
      ),
    );
  }
}
