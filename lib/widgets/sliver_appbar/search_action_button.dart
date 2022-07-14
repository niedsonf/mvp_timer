import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class SearchActionButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const SearchActionButton(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            border:
                color == Colors.transparent ? Border.all(color: light) : null,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: color),
        child: Text(text,
            style: TextStyle(color: light, fontSize: 14, letterSpacing: 1.3),
            textAlign: TextAlign.center),
      ),
    );
  }
}
