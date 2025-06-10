import 'package:clima/configs/radius/radius.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VDevider extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? radi;
  const VDevider({this.color, this.height, this.width, this.radi,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1.h,
      width: width ?? Get.width * .9,
      decoration: BoxDecoration(
        borderRadius: radi ?? radius.all15,
        color: color ?? context.colorScheme.primary.withOpacity(.5),
      ),
    );
  }
}
