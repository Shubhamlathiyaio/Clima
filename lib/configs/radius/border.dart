import 'package:flutter/material.dart';

Border border = Border();

extension SuperBorder on Border {
  //============================================================================
  //     **   Border All Sides with given width  **
  //============================================================================
  Border allF(double width, {Color color = Colors.black}) {
    return Border.all(width: width, color: color);
  }

  Border get all_5 => allF(.5);
  Border get all => allF(1);
  Border get all2 => allF(2);
  Border get all3 => allF(3);
  Border get all4 => allF(4);

  //============================================================================
  //     **   Border Individual Sides with given width  **
  //============================================================================

  Border onlyF({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
    Color color = Colors.black,
  }) {
    return Border(
      left: BorderSide(width: left, color: color),
      right: BorderSide(width: right, color: color),
      top: BorderSide(width: top, color: color),
      bottom: BorderSide(width: bottom, color: color),
    );
  }

  Border get top1 => onlyF(top: 1);
  Border get bottom1 => onlyF(bottom: 1);
  Border get left1 => onlyF(left: 1);
  Border get right1 => onlyF(right: 1);
}
