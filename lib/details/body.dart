import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/details/product_poster.dart';
import 'package:furnitureapp/models/product.dart';
import 'chat_and_cart.dart';
import 'color_list.dart';
import 'colors_dot.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  ColorList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                    child: Text(product.title,
                    style: Theme.of(context).textTheme.headline5,),
                  ),
                  Text('\$${product.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                    child: Text(product.description,
                    style: TextStyle(color: kTextLightColor),),
                  ),
                  SizedBox(height: kDefaultPadding,),
                ],
              ),
            ),
            ChatAndCart(),
          ],
        ),
      ),
    );
  }
}

