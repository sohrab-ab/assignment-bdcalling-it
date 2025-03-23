import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double ? fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final TextAlign? texAlign;


  CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color = Colors.white,
    this.texAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: texAlign,
    );
  }
}
