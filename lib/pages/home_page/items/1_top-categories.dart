import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../pages-size.dart';

// Our Category List need StateFullWidget
// I can use Provider on it, Then we dont need StatefulWidget

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Trending", "Web Shows", "Movies", "Java","Tutorials", "Android", "Laptops", "Recently uploaded", "Comedy","Aquarium", "Web Series"];
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
        margin: EdgeInsets.only(left: SizeInitialize.defaultSize! * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeInitialize.defaultSize! * 1, //20
          vertical: SizeInitialize.defaultSize! * 0.7, //5
        ),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeInitialize.defaultSize! * 1.6, // 16
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor.withOpacity(0.8) : Colors.black.withOpacity(0.45),
          ),
        ),
      ),
    );
  }
}
