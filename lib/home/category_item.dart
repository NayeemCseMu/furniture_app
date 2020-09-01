import 'package:flutter/material.dart';

import '../constants.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  int selectedIndex = 0;
  List<String> categoryList = ['All', 'Sofa', 'Park bench', 'Armchair'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: index == categoryList.length - 1 ? kDefaultPadding : 0),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: selectedIndex == index ? Colors.white.withOpacity(0.4) : Colors.transparent,
                ),
                child: Text(categoryList[index],
                  style: TextStyle(fontSize: 16, color: Colors.white,
                      fontWeight: FontWeight.w500),),
              ),
            );
          }),
    );
  }
}

