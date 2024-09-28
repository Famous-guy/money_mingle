import 'package:flutter/material.dart';

import '../../config/config.dart';

class Constant {
  static LinearGradient gradiantFill() {
    return LinearGradient(
      stops: [
        0,
        1,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(
          0xff23BD73,
        ),
        Color(
          0xffA3F402,
        ),
      ], // Define your gradient colors here
      tileMode: TileMode.mirror,
    );
  }

  static BoxDecoration coolMoneyMingleDecoration({
    BorderRadius? radius,
    BoxShadow? boxShadow,
  }) {
    return BoxDecoration(
      boxShadow: [
        boxShadow ??
            BoxShadow(
              color: ColorsTheme.black.withOpacity(
                0.05,
              ),
              blurRadius: 28.5,
              spreadRadius: 0,
              offset: Offset(
                -7,
                11,
              ),
            ),
      ],
      color: ColorsTheme.primary100,
      border: Border.all(
        width: 1.5,
        color: ColorsTheme.primary90,
      ),
      borderRadius: radius ?? BorderRadius.circular(100),
    );
  }
}
