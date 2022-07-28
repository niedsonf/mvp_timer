import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final double? lSpacing;
  final TextAlign? tAlign;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.size,
      this.lSpacing,
      this.tAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: TextOverflow.clip,
        textAlign: tAlign ?? TextAlign.start,
        style: TextStyle(
            color: color ?? light,
            fontSize: size ?? 16,
            letterSpacing: lSpacing));
  }
}
