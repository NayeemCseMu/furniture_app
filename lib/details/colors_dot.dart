import 'package:flutter/material.dart';

import '../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key, this.fillColor, this.isActive = false, this.press,
  }) : super(key: key);
  final Color fillColor;
  final bool isActive;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5), //8
        padding: EdgeInsets.all(3.0),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isActive ? fillColor : Colors.transparent,
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: fillColor
          ),
        ),
      ),
    );
  }
}

