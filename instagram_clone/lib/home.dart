import 'package:flutter/material.dart';
import 'package:instagram_clone/profile.dart';

// https://dribbble.com/shots/8514579/attachments/799201?mode=media

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /* Color */
  final Color backgroundColor = Color.fromRGBO(25, 25, 25, 1.0);
  final Color containerColor = Color.fromRGBO(35, 35, 35, 1.0);
  final Color iconConlor = Color.fromRGBO(65, 65, 65, 1.0);
  final Color textColor = Colors.grey[400];
  final Color nameColor = Colors.grey[200];

  /* Margin - padding*/
  double marginSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
/************************************************************************* */
/* Top Instagram */
          Container(
            margin: EdgeInsets.only(
              top: marginSize * 3,
              left: marginSize,
              right: marginSize,
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconCustom('assets/iconInstagram.png', 30.0),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3.0),
                      child: IconCustom('assets/nameinsta.png', 120.0),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconCustom('assets/igtvi_icon.png', 28.0),
                      Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: IconCustom('assets/sendicon.png', 30.0)),
                    ],
                  ),
                )
              ],
            ),
          ),
/************************************************************************* */
/* Top List Your Story */
          Container(
            margin: EdgeInsets.only(
                top: marginSize,
                left: marginSize * 0.5,
                right: marginSize * 0.5),
            height: 90.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.only(left: marginSize*3,right: marginSize*3),
              children: <Widget>[
                MyStoryAvatar(),
                StoryAvatar(
                  name: 'Lee Wolfe',
                  urlIcon: 'assets/nancy1.jpg',
                ),
                StoryAvatar(
                  name: 'Juan',
                  urlIcon: 'assets/nancy3.jpg',
                ),
                StoryAvatar(
                  name: 'Condy',
                  urlIcon: 'assets/nancy2.jpg',
                ),
                StoryAvatar(
                  name: 'Alaska',
                  urlIcon: 'assets/nacy.png',
                ),
                StoryAvatar(
                  name: 'Lee Wolfe',
                  urlIcon: 'assets/nancy1.jpg',
                ),
                StoryAvatar(
                  name: 'Juan',
                  urlIcon: 'assets/nancy3.jpg',
                ),
                StoryAvatar(
                  name: 'Condy',
                  urlIcon: 'assets/nancy2.jpg',
                ),
                StoryAvatar(
                  name: 'Alaska',
                  urlIcon: 'assets/nacy.png',
                ),
              ],
            ),
          ),
          SizedBox(height: marginSize),
/************************************************************************* */
/* Center Image & Like Share  & Comment*/          /* Page */
          Container(
            height: 587.5,
            // color: Colors.white,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                ListView(
                  scrollDirection: Axis.vertical,
                  // padding: EdgeInsets.only(top:16.0,bottom: 8.0),
                  children: <Widget>[
                    PageView(
                      containerColor: containerColor,
                      marginSize: marginSize,
                      image: 'assets/nancy1.jpg',
                    ),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy2.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy3.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy4.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy5.jpg'),
                    PageView(
                      containerColor: containerColor,
                      marginSize: marginSize,
                      image: 'assets/nancy6.jpg',
                    ),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy7.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy8.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy9.jpg'),
                    PageView(
                        containerColor: containerColor,
                        marginSize: marginSize,
                        image: 'assets/nancy1.jpg')
                  ],
                ),
                /* Bottom Home */
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    width: 360,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        color: containerColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.white70,
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white70,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              border:
                                  Border.all(width: 2.0, color: Colors.white)),
                          child: Icon(Icons.add, size: 25, color: iconConlor),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white70,
                        ),
                        Tab(
                          icon: Container(
                            child: GestureDetector(
                              child: Image(
                                image: AssetImage(
                                  'assets/user.png',
                                ),
                                fit: BoxFit.cover,
                                color: Colors.white70,
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Profile(),
                                      ));
                                });
                              },
                            ),
                            width: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: 47.5),
        ],
      ),
    );
  }
}

class PageView extends StatelessWidget {
  PageView({
    @required this.containerColor,
    @required this.marginSize,
    @required this.image,
  });

  final Color containerColor;
  final double marginSize;
  final String image;

  // PageView(@required this.containerColor,@required this.marginSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      margin: EdgeInsets.only(bottom: marginSize * 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: containerColor),
      child: Column(
        children: <Widget>[
          /* Image  */
          Container(
            margin: EdgeInsets.only(bottom: marginSize),
            height: 350,
            decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(32.0)),
            // child: ,
          ),
          /* Like Share */
          Container(
            margin: EdgeInsets.only(
                top: marginSize * 0.5,
                right: marginSize * 2,
                left: marginSize * 2),
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                /* Favorite Like */
                Container(
                  width: 120.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 24.0,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Text(
                        '67.123',
                        style: TextStyle(color: Colors.white30, fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 140.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconCustom('assets/iconchat.png', 20.0),
                      IconCustom('assets/sendicon.png', 20.0),
                      Icon(Icons.bookmark_border,
                          size: 24.0, color: Colors.white70),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /* Comment */
          Container(
            margin: EdgeInsets.only(
              top: marginSize,
              left: marginSize * 2,
            ),
            // right: marginSize * 2),
            height: 50.0,
            child: Row(
              children: <Widget>[
                /* Avatar comment */
                Container(
                  width: 40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/nacy.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: marginSize),
                  width: 290,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Nancy',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Momolan Dublekick - Korea',
                        style: TextStyle(fontSize: 16.0, color: Colors.white70),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
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
    return Container(
      margin: EdgeInsets.only(left: 18.0),
      child: Column(
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
      ),
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
