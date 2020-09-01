import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Function press;
  const ProductCard({
    Key key, this.itemIndex, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding,
          vertical: kDefaultPadding/2),
      height: 160,
      decoration: BoxDecoration(
//                  color: Colors.blueAccent
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,),
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200, // image take 200, so left image width.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(product.title,
                          style: Theme.of(context).textTheme.button),
                    ),
                    Spacer(),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding/2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                          color: kSecondaryColor
                      ),
                      child: Text('\$${product.price}',
                        style: Theme.of(context).textTheme.button,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

