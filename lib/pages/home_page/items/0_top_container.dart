import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_youtube/pages/profile_page/profile-page.dart';
import '../../../constants.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom:  20.0 * 0.3), //distance between search bar anad categories//0.5 kara tha mai
      // It will cover 20% of our total height
      height: size.height * 0.18, //0.2 likewa tha
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left:  20.0,
              right:  20.0,
              bottom: 50 +  20.0, //36 likewa tha
            ),
            height: size.height * 0.18 - 5, //27 likhe wa tha 5 kara mai
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.75),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(38), //36 likhewa tha
                bottomRight: Radius.circular(38),
              ),
              boxShadow: [
               /* BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 8,
                  color: kPrimaryColor.withOpacity(0.4),
                ),*/ //enabling this is adding to the container and not good results are obtained

                new CustomBoxShadow(
                    color: kPrimaryColor.withOpacity(0.8),
                    offset: new Offset(0.0, 0.0),
                    blurRadius: 8.0,
                    blurStyle: BlurStyle.outer
                )

              ],
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hey, Syed Azhar!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontSize: size.width*0.057,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Googlesans'),
                ),
                Spacer(),
                new FlatButton(
                  child: Image.asset("assets/images/logomadesahq.png",
                   height: size.width*0.57),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Positioned(
            bottom: 5, //0 tha yaha
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal:  20.0),
              padding: EdgeInsets.symmetric(horizontal:  20.0),
              height: size.height*0.071, //search bar ka
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), //search bar ka
                  boxShadow: [
                 BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 3,
                  color: kPrimaryColor.withOpacity(0.2),
                ),
                ]
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg",
                      color: kPrimaryColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class CustomBoxShadow extends BoxShadow {
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    final Offset offset,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(this.blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows)
        result.maskFilter = null;
      return true;
    }());
    return result;
  }
}