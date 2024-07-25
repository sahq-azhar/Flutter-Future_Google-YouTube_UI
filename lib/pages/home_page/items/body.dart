import 'package:flutter/material.dart';
import '0_top_container.dart';
import '1_top-categories.dart';
import '2_main-videos.dart';
import '3_stories_short-videos.dart';
import '../../../constants.dart';
//for youtube data
import 'package:future_youtube/data/youtube_data.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery
        .of(context)
        .size; //necessary for header
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopContainer(size: size),
            Categories(),
            Recommendedvideos(listData: youtubeData.sublist(0,3)),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Text("Stories and Short videos",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.043)
                     ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Explore",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 3),
                      Icon(Icons.playlist_play, color: Colors.black),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            StoriesShortvids(),
            Recommendedvideos(listData: youtubeData.sublist(3,6)),
          ]
      ),
    );
  }
}

