import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BorderRadius radius = BorderRadius.zero;

extension SuperRadius on BorderRadius {
  //==============================================================================
  //     **   Radius From All  **
  //==============================================================================

  BorderRadius allF(double value) {
    var radius = Radius.circular(value);
    return copyWith(
      bottomLeft: radius.r,
      bottomRight: radius.r,
      topRight: radius.r,
      topLeft: radius.r,
    );
  }

  BorderRadius get none => allF(0);
  BorderRadius get all => allF(5);
  BorderRadius get all8 => allF(8);
  BorderRadius get all10 => allF(10);
  BorderRadius get all12 => allF(12);
  BorderRadius get all15 => allF(15);
  BorderRadius get all20 => allF(20);
  BorderRadius get allInfi => allF(2000);

  //==============================================================================
  //     **   Radius From Left  **
  //==============================================================================

  BorderRadius lF(double value) {
    var radius = Radius.circular(value);
    return copyWith(bottomLeft: radius.r, topLeft: radius.r);
  }

  BorderRadius get l => lF(5);
  BorderRadius get l10 => lF(10);
  BorderRadius get l15 => lF(15);
  BorderRadius get l20 => lF(20);

  //==============================================================================
  //     **   Radius From Right  **
  //==============================================================================

  BorderRadius rF(double value) {
    var radius = Radius.circular(value);
    return copyWith(bottomRight: radius.r, topRight: radius.r);
  }

  BorderRadius get r => rF(5);
  BorderRadius get r10 => rF(10);
  BorderRadius get r15 => rF(15);
  BorderRadius get r20 => rF(20);

  //==============================================================================
  //     **   Radius From Top  **
  //==============================================================================

  BorderRadius tF(double value) {
    var radius = Radius.circular(value);
    return copyWith(topLeft: radius.r, topRight: radius.r);
  }

  BorderRadius get t => tF(5);
  BorderRadius get t10 => tF(10);
  BorderRadius get t15 => tF(15);
  BorderRadius get t20 => tF(20);
  BorderRadius get t30 => tF(30);

  //==============================================================================
  //     **   Radius From Bottom  **
  //==============================================================================

  BorderRadius bF(double value) {
    var radius = Radius.circular(value);
    return copyWith(bottomRight: radius.r, bottomLeft: radius.r);
  }

  BorderRadius get b => bF(5);
  BorderRadius get b10 => bF(10);
  BorderRadius get b15 => bF(15);
  BorderRadius get b20 => bF(20);

  //==============================================================================
  //     **   Radius From Top Right  **
  //==============================================================================

  BorderRadius trF(double value) {
    var radius = Radius.circular(value);
    return copyWith(topRight: radius.r);
  }

  BorderRadius get tr => trF(5);
  BorderRadius get tr10 => trF(10);
  BorderRadius get tr15 => trF(15);
  BorderRadius get tr20 => trF(20);
  //==============================================================================
  //     **   Radius From Top Left  **
  //==============================================================================

  BorderRadius tlF(double value) {
    var radius = Radius.circular(value);
    return copyWith(topLeft: radius.r);
  }

  BorderRadius get tl => tlF(5);
  BorderRadius get tl10 => tlF(10);
  BorderRadius get tl15 => tlF(15);
  BorderRadius get tl20 => tlF(20);

  //==============================================================================
  //     **   Radius From Bottom Left  **
  //==============================================================================

  BorderRadius blF(double value) {
    var radius = Radius.circular(value);
    return copyWith(bottomLeft: radius.r);
  }

  BorderRadius get bl => blF(5);
  BorderRadius get bl10 => blF(10);
  BorderRadius get bl15 => blF(15);
  BorderRadius get bl20 => blF(20);

  //==============================================================================
  //     **   Radius From Bottom Right  **
  //==============================================================================

  BorderRadius brF(double value) {
    var radius = Radius.circular(value);
    return copyWith(bottomRight: radius.r);
  }

  BorderRadius get br => brF(5);
  BorderRadius get br10 => brF(10);
  BorderRadius get br15 => brF(15);
  BorderRadius get br20 => brF(20);
}
