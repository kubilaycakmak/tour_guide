import 'package:flutter/material.dart';
import 'package:tour_guide/person_page.dart';
import 'package:tour_guide/style/color.dart';
import 'dash_board_page.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedItem = 0;
  List children = [
      DashBoardPage(),
      SearchPage(),
      PersonPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDarkLighter,
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorDark,
        selectedItemColor: colorPink,
        iconSize: 30,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: colorDark),
        unselectedItemColor: colorTransparent,
        onTap: (currentIndex){
          setState(() {
            selectedItem = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: colorDark,
            icon: Icon(Icons.home),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorPink
              ),
            )
          ),
          BottomNavigationBarItem(
            backgroundColor: colorDark,
            icon: Icon(Icons.search),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorPink
              ),
            )
          ),
          BottomNavigationBarItem(
            backgroundColor: colorDark,
            icon: Icon(Icons.person_outline),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorPink
              ),
            )
          ),   
        ],
      ),
    );
  }
}