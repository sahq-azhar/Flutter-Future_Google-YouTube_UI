import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_youtube/bottom-bar/curved_bottom_bar.dart';
import 'package:future_youtube/pages/home_page/items/body.dart';
import 'package:future_youtube/pages-size.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeInitialize().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomCurvNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false, //hide the back button
      title: Image.asset("assets/images/yt_logo2.png", scale: 7),
      elevation: 0,
      backgroundColor: kPrimaryColor.withOpacity(0.75),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/videoyt.svg",
              width: 26, height: 26),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: SizeInitialize.defaultSize * 0.5,
        )
      ],
    );
  }
}
