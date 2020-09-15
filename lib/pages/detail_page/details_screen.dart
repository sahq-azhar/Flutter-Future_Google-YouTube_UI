import 'package:flutter/material.dart';

import 'package:future_youtube/constants.dart';
import 'package:future_youtube/bottom-bar/curved_bottom_bar.dart';
import 'package:future_youtube/pages/detail_page/tabview.dart';

import '../../pages-size.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeInitialize.defaultSize;
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: MyBottomCurvNavBar(),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: size.height * .37,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/detailpagesahq.jpeg"),
                        //youtube thumnail big
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: new Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: size.width*0.62,right: 10),
                            height: 37,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: launchinsta,
                                  icon: Image.asset(
                                      "assets/icons/instagram.png",
                                      width: 25,
                                      height: 25),
                                ),
                                IconButton(
                                  onPressed: launchlink,
                                  icon: Image.asset(
                                      "assets/icons/linkedin.png",
                                      width: 26,
                                      height: 26),
                                ),
                                IconButton(
                                  onPressed: launchtwitter,
                                  icon: Image.asset(
                                      "assets/icons/twitter.png",
                                      width: 25,
                                      height: 25),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SAHQ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(fontWeight: FontWeight.w900),
                                ),
                                SizedBox(width: 2),
                                Image.asset("assets/images/verify.png",
                                    width: 18, height: 18),
                                SizedBox(width: 35),
                               //to display links below the image
                               /* Container(
                                    height: 37,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          onPressed: _launchURL,
                                          icon: Image.asset(
                                              "assets/icons/instagram.png",
                                              width: 25,
                                              height: 25),
                                        ),
                                        IconButton(
                                          onPressed: _launchURL,
                                          icon: Image.asset(
                                              "assets/icons/facebook.png",
                                              width: 25,
                                              height: 25),
                                        ),
                                        IconButton(
                                          onPressed: _launchURL,
                                          icon: Image.asset(
                                              "assets/icons/twitter.png",
                                              width: 25,
                                              height: 25),
                                        ),
                                      ],
                                    )),*/
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "100.7M subscribers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: size.width * .7,
                              // it just take 70% of total width
                              child: Text(
                                "I am a programmer and a robotic enthusiast, coding my life.. ",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: defaultSize * 7, //140
                              width: defaultSize * 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: kPrimaryColor,
                                  width: defaultSize * 0.2, //8
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sahq.jpg"),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "SUBSCRIBE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  const Divider(
                    color: Colors.black38,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  TopList(),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                    child: Column(
                      children: <Widget>[
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: size.width * 0.96,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.ibb.co/BL8gtCj/main-thubnail-fnal-2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding:
                                    const EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    dense: true,
                                    leading: IconButton(
                                      //main yaha hai---iconbutton better than flat button
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      padding: EdgeInsets.all(0.0),
                                      //icon ku bada rakhta ye rakho
                                      //shape: CircleBorder(side: BorderSide(color: Colors.pink, width: 2.0)),enable this when using floatingactionbutton
                                      icon: Image.network(
                                          "https://i.ibb.co/x3M3fgY/sahqchannel.png"),

                                      onPressed: () {},
                                    ),
                                    title: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 4.0),
                                      child: Text("Future Youtube UI-Concept by SAHQ"),
                                    ),
                                    subtitle: Text(
                                        "${"SAHQ"} . ${"1B views"} . ${"10 hour ago"}"),
                                    trailing: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 6, 20),
                                        //3 dots ka hai
                                        child: Icon(Icons.more_vert)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: size.width * 0.96,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.ibb.co/D91D9Wt/write2code.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding:
                                    const EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    dense: true,
                                    leading: IconButton(
                                      //main yaha hai---iconbutton better than flat button
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      padding: EdgeInsets.all(0.0),
                                      //icon ku bada rakhta ye rakho
                                      //shape: CircleBorder(side: BorderSide(color: Colors.pink, width: 2.0)),enable this when using floatingactionbutton
                                      icon: Image.network(
                                          "https://i.ibb.co/x3M3fgY/sahqchannel.png"),

                                      onPressed: () {},
                                    ),
                                    title: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 4.0),
                                      child: Text("From paper to code- Youtube UI-Concept by SAHQ"),
                                    ),
                                    subtitle: Text(
                                        "${"SAHQ"} . ${"10M views"} . ${"5 hour ago"}"),
                                    trailing: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 6, 20),
                                        //3 dots ka hai
                                        child: Icon(Icons.more_vert)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

launchinsta() async {
  const url = 'https://www.instagram.com/sahq_azhar/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchlink() async {
  const url = 'https://www.linkedin.com/in/syed-azhar-hussain-quadri-492512173';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchtwitter() async {
  const url = 'https://twitter.com/sahq_azhar';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}