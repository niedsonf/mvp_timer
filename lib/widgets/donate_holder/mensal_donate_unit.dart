import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/element_text.dart';

class MensalDonateUnit extends StatelessWidget {
  final String name;
  final String value;
  const MensalDonateUnit({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: darker,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 2,
              color: goldColor,
            )
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(text: 'My Nickname'),
          const SizedBox(width: 15),
          ElementText(text: '10,00', bgColor: goldColor, textColor: darker)
        ],
      ),
    );
  }
}
