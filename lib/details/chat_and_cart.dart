import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ChatAndCart extends StatelessWidget {
  const ChatAndCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,
          vertical: kDefaultPadding/4),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton.icon(
            icon: SvgPicture.asset('assets/icons/chat.svg'),
            label: Text('Chat',
              style: TextStyle(color: Colors.white),
            ),
          ),

          FlatButton.icon(
            icon: SvgPicture.asset('assets/icons/shopping-bag.svg'),
            label: Text('Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          ),


        ],
      ),
    );
  }
}

