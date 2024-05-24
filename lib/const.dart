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
    this.maxLine,
  });

  final double? size;
  final int? maxLine;
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
      maxLines: maxLine,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}

class AppCacheString {
  static const splashBgImage = "splashBgImage";
}
