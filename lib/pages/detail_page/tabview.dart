import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../pages-size.dart';

// Our Category List need StateFullWidget
// I can use Provider on it, Then we dont need StatefulWidget

class TopList extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<TopList> {
  List<String> categories = ["Home", "Videos", "Playlist", "Community", "Store","Stories", "Channels", "About"];
  List _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.playlist_play,
    Icons.people,
    Icons.local_grocery_store,
    Icons.donut_large,
    Icons.personal_video,
    Icons.info_outline
  ];
  // By default first one is selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeInitialize.defaultSize! * 1),
      child: SizedBox(
        height: SizeInitialize.defaultSize! * 3.5, // 35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeInitialize.defaultSize! * 1.5),
        padding: EdgeInsets.symmetric(
          horizontal: SizeInitialize.defaultSize! * 1, //20
          vertical: SizeInitialize.defaultSize! * 0.7, //5
        ),
        decoration: BoxDecoration(
            color:
            selectedIndex == index ? Colors.black.withOpacity(0.3) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeInitialize.defaultSize! * 1.2,
            )
        ),
        child:Row(
          children: [
            Icon(
              // get the icon
              _icons[index],
              size: 17,
              // get the color of the icon (dependent of its state)
              color: selectedIndex == index ? kPrimaryColor.withOpacity(0.8) : Colors.black.withOpacity(0.6),
            ),
            SizedBox(width: 5),
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kPrimaryColor.withOpacity(0.8) : Colors.black.withOpacity(0.6),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
