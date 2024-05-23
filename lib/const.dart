import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.size,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.letterSpacing,
  });

  final double? size;
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}