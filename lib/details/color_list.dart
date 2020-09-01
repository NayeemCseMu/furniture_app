import 'package:flutter/material.dart';

import '../constants.dart';
import 'colors_dot.dart';

class ColorList extends StatelessWidget {
  const ColorList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ColorDot(
          fillColor: kTextLightColor,
          isActive: true,
          press: (){},
        ),
        ColorDot(
          fillColor: kRedColor,

        ),
        ColorDot(
          fillColor: kPrimaryColor,

        ),
      ],
    );
  }
}

