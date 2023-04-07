import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageConstant {
  static EdgeInsetsGeometry pagePadding = EdgeInsets.only(
    top: Get.height * 0.025,
    left: Get.width * 0.05,
    right: Get.width * 0.05,
  );
}

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize = 0.015,
      this.padding,
      this.alignment,
      this.fontColor,
      this.fontWeight,
      this.isItalic = false,
      this.textAlign})
      : super(key: key);
  final String text;
  final double fontSize;
  final bool isItalic;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final AlignmentGeometry? alignment;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(),
      child: Align(
        alignment: alignment ?? Alignment.topLeft,
        child: Text(text,
            textAlign: textAlign ?? TextAlign.start,
            style: TextStyle(
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: fontColor ?? AppTheme.appTextColor,
              fontSize: Get.height * fontSize,
            )),
      ),
    );
  }
}

class AppTheme {
  static const Color backgroundScreenColor = Colors.white;
  static const Color storyBackGroundColor = Color.fromARGB(255, 0, 0, 0);
  static const Color primaryColor = Color.fromARGB(255, 236, 95, 1);
  static const Color secondryColor = Color.fromARGB(255, 33, 33, 33);
  static const Color appTextColor = Color.fromARGB(255, 97, 97, 97);
}
