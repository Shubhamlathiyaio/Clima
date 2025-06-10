import 'package:clima/configs/radius/radius.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bg extends StatelessWidget {
  final child;
  final double? height;
  final double? width;

  const Bg({required this.child, this.height, this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?? 94.h,
      width: width?? 494.w,
      decoration: BoxDecoration(
        borderRadius: radius.all15,
        border: Border.all(
          width: .5,
          color: context.colorScheme.primary.withOpacity(.5),
        ),
        color: context.colorScheme.primary.withOpacity(.2),
      ),
      child: child,
    );
  }
}
