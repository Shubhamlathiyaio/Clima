import 'package:clima/configs/radius/radius.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 42.w,
      decoration: BoxDecoration(
        borderRadius: radius.all15,
        color: context.colorScheme.primary.withOpacity(.3),
      ),
      child: Icon(Icons.near_me,size: 18)
    );
  }
}
