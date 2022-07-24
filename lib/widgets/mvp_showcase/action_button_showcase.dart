import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class ActionButtonShowcase extends StatelessWidget {
  final Function() onTap;
  final Color color;
  final IconData icon;
  final String text;
  const ActionButtonShowcase(
      {Key? key,
      required this.onTap,
      required this.color,
      required this.icon,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: width * 0.1,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Colors.black26,
            )
          ],
          color: color,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: light,
            ),
            CustomText(text: text)
          ],
        ),
      ),
    );
  }
}
