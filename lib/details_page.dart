import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/details/body.dart';
import 'package:furnitureapp/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      title: Text('Back'.toUpperCase(),
      style: Theme.of(context).textTheme.bodyText2,),
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: (){},
        )
      ],
    );
  }
}
