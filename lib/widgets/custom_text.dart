import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;

  const CustomText({Key? key, required this.text, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: color ?? light, fontSize: size ?? 16, letterSpacing: 1.3));
  }
}
