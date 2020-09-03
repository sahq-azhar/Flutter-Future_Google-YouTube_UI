import 'package:flutter/material.dart';

import 'package:future_youtube/constants.dart';
import 'package:future_youtube/bottom-bar/curved_bottom_bar.dart';

import '../../pages-size.dart';

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
                                ]),
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
                                "I am a programmer and robotic enthusiast , also know as the future developer",
                              ),
                            ),
                          ],
                        ),

                        /*Row(
                          children: [
                            SizedBox(
                              width: size.width * .5,
                              // it just take the 50% width
                              child: SearchBar(),
                            ),
                          ],
                        ),*/
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                    child: Column(
                      children: <Widget>[
                        Card(
                          shadowColor: Colors.black,
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: size.width * 0.96,
                                height: 250.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.ibb.co/KjnDSpg/main-thubnail.jpg"),
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
