import 'package:flutter/material.dart';
import '../../../pages-size.dart';

class StoriesShortvids extends StatelessWidget {
  const StoriesShortvids({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          StoriesShortvidsCard(
            image: "https://images.unsplash.com/photo-1498335746477-0c73d7353a07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9",
            image1: "https://i.ibb.co/x3M3fgY/sahqchannel.png",
            press: () {},
          ),
          StoriesShortvidsCard(
            image: "https://images.wallpapersden.com/image/download/minimal-planet-red-background_63544_320x480.jpg",
            image1: "https://www.freepngimg.com/thumb/google/67060-play-photos-search-google-account-png-file-hd.png",
            press: () {},
          ),
          StoriesShortvidsCard(
            image: "https://wallpapercave.com/wp/wp4903112.jpg",
            image1: "https://i.ibb.co/cCRTVDN/logoytchannel.png",
            press: () {},
          ),
          StoriesShortvidsCard(
            image: "https://iphonewalls.net/wp-content/uploads/2014/09/Batman%20Shattered%20Logo%20White%20MInimal%20iPhone%205%20Wallpaper-320x480.jpg",
            image1: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTcw6IsbsGJg3hj4ziM6pzpNTRLkxfkdCuoTA&usqp=CAU",
            press: () {},
          ),
          StoriesShortvidsCard(
            image: "https://i.pinimg.com/originals/84/f1/8e/84f18eb5953adbf1eee29a7efc584aad.jpg",
            image1: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTE0z_0veQF8gZbOUymYsPBSGn2H8hPttEiIA&usqp=CAU",
            press: () {},
          ),
          StoriesShortvidsCard(
            image: "https://cuteiphonewallpaper.com/wp-content/uploads/2019/10/Minimalist-iPhone-Wallpaper-in-HD.jpg",
            image1: "https://cdn3.iconfinder.com/data/icons/popular-services-brands/512/google-drive-512.png",
            press: () {},
          ),

        ],
      ),
    );
  }
}

class StoriesShortvidsCard extends StatelessWidget {
  const StoriesShortvidsCard({
    Key key,
    this.image,
    this.image1,
    this.press,
  }) : super(key: key);
  final String image;
  final String image1;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultSize = SizeInitialize.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left:  10,
          top:  10,
          bottom: 22,
        ),
        width: size.width * 0.3,
        height: 195,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),

          ),
        ),
    child: new Stack(
      alignment: Alignment.bottomCenter,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: defaultSize * 5, //140
        width: defaultSize * 5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.red,
            width: defaultSize * 0.2, //8
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image1),
          ),
        ),
      ),





  /*  new Positioned(
    right: 50.0,
      left: 50.0,
      bottom: 10.0,
      child: new Image.asset(image1),
    )*/
      ],
    ),
      )
    );
  }
}
