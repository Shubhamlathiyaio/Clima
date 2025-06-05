import 'package:clima/configs/radius/radius.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

class AppButton extends StatelessWidget {
  final String lable;
  final double? height;
  final double? width;
  final bool isDisabled;
  final VoidCallback? onTap;
  final bool isOutline;
  final BorderRadius? radi;
  final EdgeInsets? margin;

  const AppButton({
    required this.lable,
    this.height,
    this.width = double.infinity,
    this.onTap,
    this.isOutline = false,
    this.isDisabled = false,
    this.radi,
    this.margin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: height ?? 50.h,
        width: width ?? Get.width,
        margin: margin,
        decoration: BoxDecoration(
          color:
              isOutline
                  ? null
                  : isDisabled
                  ? context.theme.disabledColor
                  : context.theme.primaryColor,
          borderRadius: radi ?? radius.all8,
          border:
              isOutline
                  ? Border.all(
                    width: 1,
                    color:
                        isDisabled
                            ? context.theme.disabledColor
                            : context.theme.primaryColor,
                  )
                  : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: isDisabled ? null : onTap ?? () {},
            borderRadius: radi ?? radius.all8,
            child: Center(
              child: Text(
                lable,
                style: context.text.labelLarge?.copyWith(
                  color:
                      isDisabled
                          ? isOutline
                            ? context.theme.disabledColor
                            : context.colorScheme.onPrimary
                          : isOutline
                            ? context.colorScheme.primary
                            : context.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
