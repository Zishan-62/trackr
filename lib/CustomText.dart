import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {required this.text,
      this.textcolor,
      this.fontWeight,
      this.textAlign,
      this.FontFamily,
      this.fontSize,
      this.fontStyle,
      Key? key})
      : super(key: key);
  String text;
  Color? textcolor;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  String? FontFamily;
  double? fontSize;
  FontStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textcolor ?? Colors.black,
          fontWeight: fontWeight,
          fontFamily: FontFamily,
          fontStyle: fontStyle,
          fontSize: fontSize),
      textAlign: textAlign,
    );
  }
}
