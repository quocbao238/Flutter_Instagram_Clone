import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

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
 /*
  Search bar          
*/
          Container(
            // color: containerColor,
            // margin: EdgeInsets.only(top: marginSize*6),
            height: 40.0,
            // child: Placeholder(),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
            // fit: BoxFit.cover,
          )
          ),


          // ),
 /*
  Shop bar       
*/
          Container(
            margin: EdgeInsets.only(top: marginSize),
            height: 25.0,
            child: Placeholder(),
          ),
 /*
  GribView      
*/
          Container(
            height: 624.0,
            margin: EdgeInsets.only(top: marginSize,bottom: marginSize),
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}