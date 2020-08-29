import 'package:flutter/material.dart';
import 'package:future_youtube/constants.dart';
import 'package:future_youtube/pages/home_page/home-page_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Future YouTube',
      theme: ThemeData(
        fontFamily: 'Googlesans',
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
       // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //darkTheme: ThemeData.dark(),
      home:  HomeScreen(),
    );
  }
}