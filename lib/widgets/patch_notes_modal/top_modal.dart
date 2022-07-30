import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class TopModal extends StatelessWidget {
  const TopModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.elliptical(50, 20)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: light),
            height: 2,
            width: 50,
          ),
          const SizedBox(height: 30),
          Text('PATCH NOTES', style: TextStyle(fontSize: 12, color: light)),
          Divider(color: light, indent: 80, endIndent: 80),
        ],
      ),
    );
  }
}
