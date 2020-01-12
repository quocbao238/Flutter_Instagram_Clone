import 'package:flutter/material.dart';
import 'package:instagram_clone/home.dart';

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
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          /* Top Instagram */
          Container(
            margin: EdgeInsets.only(
              left: marginSize * 0.5,
              right: marginSize * 0.5,
              top: marginSize * 5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: containerColor),
            height: 280.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: marginSize),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white70,
                        iconSize: 18.0,
                        onPressed: () {
                          setState(() {
                            changePageHome(context);
                          });
                        },
                      ),
                      Container(
                        width: 120.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 80,
                              height: 30.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: Colors.blue[400]),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white70,
                              size: 26.0,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(height: 20.0),
                /*  Avatar && Name*/
                Container(
                  height: 120.0,
                  child: Row(
                    children: <Widget>[
                      /* Avatar*/
                      Container(
                        width: 120.0,
                        child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(64),
                                  color: Colors.red,
                                ),
                              ),
                              Container(
                                width: 90.0,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  // color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(64),
                                  image: DecorationImage(
                                    image: AssetImage('assets/nacy.png'),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(width: 20.0),
                      /*  Name*/
                      Container(
                        width: 240,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Nancy Momoland',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                            Text(
                              '모모랜드 낸시 인스타그램의 팬페이지',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white24),
                            ),
                            Text(
                              "NANCY's IG: @nancyjewel_mcdonie\nMusic Video youtu.be/TbuP2ypiTRc",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.blue[300]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                /* Post Follow Follower*/
                Container(
                  margin: EdgeInsets.only(
                      right: marginSize * 2, top: marginSize * 2),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      NumberPost(
                        number: '727',
                        type: 'Post',
                      ),
                      NumberPost(
                        number: '936k',
                        type: 'Followers',
                      ),
                      NumberPost(
                        number: '240',
                        type: 'Following',
                      ),
                    ],
                  ),
                )
              ],
            ),
            // child: Placeholder(),
          ),
          /* Center */
          Container(
            // color: Colors.white,
            height: 50.0,
            // color:Colors.red,
            margin: EdgeInsets.only(
                top: marginSize, left: marginSize * 4, right: marginSize * 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconCustom('assets/gallery.png', 40.0, Colors.white),
                IconCustom('assets/follower.png', 40.0, Colors.white30),
              ],
            ),
          ),
          /* Center bottom */
          // SizedBox(height: 20.0),
          Container(
            height: 395.5,
            // color: Colors.red,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 1.0,
                  children: <Widget>[
                    ItemImage(url: 'assets/nancy1.jpg'),
                    ItemImage(url: 'assets/nancy2.jpg'),
                    ItemImage(url: 'assets/nancy3.jpg'),
                    ItemImage(url: 'assets/nancy4.jpg'),
                    ItemImage(url: 'assets/nancy5.jpg'),
                    ItemImage(url: 'assets/nancy6.jpg'),
                    ItemImage(url: 'assets/nancy7.jpg'),
                    ItemImage(url: 'assets/nancy8.jpg'),
                    ItemImage(url: 'assets/nancy9.jpg'),
                    ItemImage(url: 'assets/nancy1.jpg'),
                    ItemImage(url: 'assets/nancy2.jpg'),
                    ItemImage(url: 'assets/nancy3.jpg'),
                    ItemImage(url: 'assets/nancy4.jpg'),
                    ItemImage(url: 'assets/nancy5.jpg'),
                    ItemImage(url: 'assets/nancy6.jpg'),
                    ItemImage(url: 'assets/nancy7.jpg'),
                    ItemImage(url: 'assets/nancy8.jpg'),
                    ItemImage(url: 'assets/nancy9.jpg'),
                  ],
                ),
                /* Bottom Bar*/
                Container(
                  // alignment: AlignmentDirectional.centerEnd,
                  width: 360,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42),
                      color: containerColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        child:
                            Icon(Icons.home, size: 30, color: Colors.white70),
                        onTap: () {
                          setState(() {
                            changePageHome(context);
                          });
                        },
                      ),
                      Icon(Icons.search, size: 30, color: Colors.white70),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border:
                                Border.all(width: 2.0, color: Colors.white)),
                        child:
                            Icon(Icons.add, size: 20.0, color: Colors.white70),
                      ),
                      Icon(Icons.favorite_border,
                          size: 30, color: Colors.white70),
                      IconCustom('assets/user.png', 25.0, Colors.white70)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changePageHome(BuildContext context) {
     Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }
}

class ItemImage extends StatelessWidget {
  final url;

  ItemImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.cover,
          )),
    );
  }
}

class NumberPost extends StatelessWidget {
  final number;
  final type;
  // final Color color;

  NumberPost({
    this.number,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              // letterSpacing: 2.0
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            type,
            style: TextStyle(
              color: Colors.white24,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}

class StoryAvatar extends StatelessWidget {
  final urlIcon;

  StoryAvatar(String s, {this.urlIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
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
      ]),
    );
  }
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
          fit: BoxFit.cover,
          color: color,
        ),
        width: size,
      ),
    );
  }
}
