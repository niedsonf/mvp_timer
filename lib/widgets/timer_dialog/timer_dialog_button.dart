import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class TimerDialogButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const TimerDialogButton(
      {Key? key, required this.onTap, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      radius: 10,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Colors.black26,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [CustomText(text: text), Icon(Icons.add, color: light)],
        ),
      ),
    );
  }
}
