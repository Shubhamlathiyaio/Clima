import 'package:clima/configs/radius/radius.dart';
import 'package:clima/configs/space/edge.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeautifulField extends StatelessWidget {
  const BeautifulField({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 60.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: radius.all15,
          color: context.colorScheme.primary.withOpacity(.3),
        ),
        child: Padding(
          padding: edge.h16,
          child: Row(
            children: [
              Flexible(
                child: SizedBox(height: 60.h,width: 338.w,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search location...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
          Icon(Icons.search)

            ],
          ),
        ),
      ),
    );
  }
}
