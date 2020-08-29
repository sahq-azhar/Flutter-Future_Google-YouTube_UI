import 'package:flutter/material.dart';
import 'package:future_youtube/pages/home_page/home-page_main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; //curveicons
import 'package:future_youtube/bottom_bar_icons.dart'; //icons
import 'package:future_youtube/constants.dart'; //colors

class MyBottomCurvNavBar extends StatefulWidget {
  @override
  NavToNewPageBottomNavState createState() {
    return new NavToNewPageBottomNavState();
  }
}

class NavToNewPageBottomNavState extends State<MyBottomCurvNavBar> {
  GlobalKey _bottomNavigationKey = GlobalKey();

  _onTap(int index) {
    if (index == 0)
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return HomeScreen();
      }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: kBackgroundColor,
          buttonBackgroundColor: kBackgroundColor,//kBackgroundColor is good here
          color: kPrimaryColor.withOpacity(0.75),
          height: 47,
          items: <Widget>[
            Icon(BottomBar.home, size: 19),
            Icon(BottomBar.compass2, size: 19),
            Icon(BottomBar.playlist, size: 20),
            Icon(BottomBar.bell, size: 19),
            Icon(BottomBar.video, size: 19),
          ],
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.bounceInOut,
          onTap: _onTap),
    );
  }
}
