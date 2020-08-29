import 'package:flutter/material.dart';
import 'package:future_youtube/constants.dart';
import 'package:future_youtube/pages-size.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeInitialize().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  double defaultSize = SizeInitialize.defaultSize;
  return ListView(

    children: <Widget>[
      SizedBox(
        height: defaultSize * 24, // 240//distance between picture and appbar
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: defaultSize * 25, //250//red upar ka
                //color: kPrimaryColor.withOpacity(0.7),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.4, 1],//left,disperse kitna hona
                        colors: [kPrimaryColor.withOpacity(0.75), Colors.lightBlue])//light blue crazy hai //bluegray bhi
                ),
              ),

            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: defaultSize), //10
                    height: defaultSize * 14, //140
                    width: defaultSize * 14, //image
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: defaultSize * 0.4, //8
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/sahq1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), //5
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Syed Azhar",
                        style: TextStyle(
                          fontSize: defaultSize * 2.2, // 22
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), //5
                      Text(
                        "azharhussain7a@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 10),
        Card(
          shadowColor: Colors.black,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
      child:ListTile(
          title: Text('Your Channel'),
          leading:
              SvgPicture.asset("assets/icons/user.svg", width: 24, height: 24),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),),
      SizedBox(height: 4),
    Card(
      shadowColor: Colors.black,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
          leading: SvgPicture.asset("assets/icons/develop.svg",
              width: 24, height: 24),
          title: Text('Time watched'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
    ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading: SvgPicture.asset("assets/icons/youtube.svg",
              width: 24, height: 24),
          title: Text('Get YouTube Premium'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading: SvgPicture.asset("assets/icons/dollar.svg",
              width: 24, height: 24),
          title: Text('Paid memberships'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading: SvgPicture.asset("assets/icons/switch.svg",
              width: 24, height: 24),
          title: Text('Switch Account'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading: SvgPicture.asset("assets/icons/incognito.svg",
              width: 24, height: 24),
          title: Text('Turn on Incognito'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          title: Text('Your data in YouTube'),
          leading: SvgPicture.asset("assets/icons/userdata.svg",
              width: 24, height: 24),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 20),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading: SvgPicture.asset("assets/icons/question.svg",
              width: 24, height: 24),
          title: Text('Help and Feedback'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
      SizedBox(height: 4),
  Card(
  shadowColor: Colors.black,
  elevation: 10,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
  ),
  child:ListTile(
          leading:
              SvgPicture.asset("assets/icons/gear.svg", width: 24, height: 24),
          title: Text('Settings'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}),
  ),
],


  );
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    bottomOpacity: 0.0,
    backgroundColor: kPrimaryColor.withOpacity(0.75),
    leading: SizedBox(),//hide back button
    // On Android it's false by default
    centerTitle: true,
    title: Text("Profile"),
    actions: <Widget>[
      FlatButton(
        onPressed: () {},
        child: IconButton(
          icon: SvgPicture.asset("assets/icons/edit.svg",
              width: 23, height: 23,color: Colors.white,),
          onPressed: () {},
        ),
      ),
    ],
  );
}
