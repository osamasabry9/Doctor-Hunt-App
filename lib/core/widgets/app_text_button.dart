import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors.dart';

class AppTextButton extends StatelessWidget {
  final String textButton;
  final TextStyle textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;

  const AppTextButton({
    super.key,
    required this.textButton,
    required this.textStyle,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.buttonHeight,
    this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 16,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight?.h ?? 50.h,
          ),
        ),
      ),
      child: Text(
        textButton,
        style: textStyle,
      ),
    );
  }
}
