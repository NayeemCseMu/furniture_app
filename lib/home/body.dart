import 'package:flutter/material.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/home/product_list.dart';
import 'package:furnitureapp/home/search_box.dart';
import '../details_page.dart';
import 'category_item.dart';
import 'package:furnitureapp/models/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged:(value){}),
          Category(),
          SizedBox(height: kDefaultPadding,),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
              margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(40),
                     topLeft: Radius.circular(40),
                   )
                  ),
                ),
               ListView.builder(
                   itemCount: products.length,
                   itemBuilder: (context,index){
                 return  ProductCard(
                   itemIndex: index,
                   product: products[index],
                   press: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[index],)));
                   },
                 );
               })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

