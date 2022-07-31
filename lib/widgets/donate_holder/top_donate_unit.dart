import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class TopDonateUnit extends StatefulWidget {
  final Color color;
  const TopDonateUnit({Key? key, required this.color}) : super(key: key);

  @override
  State<TopDonateUnit> createState() => _TopDonateUnitState();
}

class _TopDonateUnitState extends State<TopDonateUnit> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(75),
        decoration: BoxDecoration(
          border: Border.all(color: light.withOpacity(.3)),
          boxShadow: [
            BoxShadow(
                color: widget.color.withAlpha(150),
                blurRadius: 16,
                spreadRadius: 4),
            BoxShadow(color: widget.color, blurRadius: 8, spreadRadius: 1),
          ],
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                widget.color.withOpacity(1),
                widget.color.withOpacity(.7)
              ]),
        ),
        child: Column(
          children: [
            CustomText(text: 'Seu nome aqui!'),
            CustomText(text: 'Sua doação aqui!'),
          ],
        ));
  }
}
