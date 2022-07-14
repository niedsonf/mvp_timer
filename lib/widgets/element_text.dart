import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class ElementText extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  const ElementText(
      {Key? key,
      required this.text,
      required this.bgColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)), color: bgColor),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
            fontSize: 10,
            color: textColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5),
      ),
    );
  }
}
