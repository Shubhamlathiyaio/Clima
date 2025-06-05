import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsets edge = EdgeInsets.zero;

extension SuperEdgeInsets on EdgeInsets {
  //==============================================================================
  //     **   EdgeInsets From All  **
  //==============================================================================
  EdgeInsets allF(double value) {
    return copyWith(
      top: value.h,
      bottom: value.h,
      right: value.h,
      left: value.h,
    );
  }

  EdgeInsets get none => allF(0);
  EdgeInsets get all2 => allF(2);
  EdgeInsets get all => allF(5);
  EdgeInsets get all10 => allF(10);
  EdgeInsets get all15 => allF(15);
  EdgeInsets get all16 => allF(16);
  EdgeInsets get all20 => allF(20);
  EdgeInsets get all24 => allF(24);

  //==============================================================================
  //     **   EdgeInsets From Horizontal  **
  //==============================================================================

  EdgeInsets hf(double value) {
    return copyWith(right: value.w, left: value.w);
  }

  EdgeInsets get hz => hf(5);
  EdgeInsets get h6 => hf(6);
  EdgeInsets get h10 => hf(10);
  EdgeInsets get h12 => hf(12);
  EdgeInsets get h15 => hf(15);
  EdgeInsets get h20 => hf(20);
  EdgeInsets get h24 => hf(24);

  //==============================================================================
  //     **   EdgeInsets From Vertical  **
  //==============================================================================

  EdgeInsets vf(double value) {
    return copyWith(top: value.h, bottom: value.h);
  }

  EdgeInsets get v => vf(5);
  EdgeInsets get v6 => vf(6);
  EdgeInsets get v10 => vf(10);
  EdgeInsets get v12 => vf(12);
  EdgeInsets get v15 => vf(15);
  EdgeInsets get v20 => vf(20);
  EdgeInsets get v24 => vf(24);

  //==============================================================================
  //     **   EdgeInsets From Top  **
  //==============================================================================

  EdgeInsets tf(double value) {
    return copyWith(top: value.h);
  }

  EdgeInsets get t => tf(5);
  EdgeInsets get t10 => tf(10);
  EdgeInsets get t15 => tf(15);
  EdgeInsets get t20 => tf(20);

  //==============================================w================================
  //     **   EdgeInsets From Bottom  **
  //==============================================================================

  EdgeInsets bf(double value) {
    return copyWith(bottom: value.h);
  }

  EdgeInsets get b => bf(5);
  EdgeInsets get b10 => bf(10);
  EdgeInsets get b15 => bf(15);
  EdgeInsets get b20 => bf(20);
  EdgeInsets get b24 => bf(24);
  EdgeInsets get b48 => bf(48);

  //==============================================================================
  //     **   EdgeInsets From Right  **
  //==============================================================================

  EdgeInsets rf(double value) {
    return copyWith(right: value.w);
  }

  EdgeInsets get r => rf(5);
  EdgeInsets get r10 => rf(10);
  EdgeInsets get r15 => rf(15);
  EdgeInsets get r16 => rf(16);
  EdgeInsets get r20 => rf(20);

  //==============================================================================
  //     **   EdgeInsets From Left  **
  //==============================================================================

  EdgeInsets lf(double value) {
    return copyWith(left: value.w);
  }

  EdgeInsets get l => lf(5);
  EdgeInsets get l10 => lf(10);
  EdgeInsets get l15 => lf(15);
  EdgeInsets get l20 => lf(20);
  EdgeInsets get l48 => lf(48);
}
