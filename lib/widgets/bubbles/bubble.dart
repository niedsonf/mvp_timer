import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

import 'dart:math';

class Bubble extends StatefulWidget {
  const Bubble({Key? key}) : super(key: key);

  @override
  State<Bubble> createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  double getRandom(double min, double max) {
    return min + Random().nextInt(max.toInt());
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: getRandom(10, 20).toInt()))
      ..repeat();
    animation = Tween<Offset>(
            begin: Offset(getRandom(-10, 20), getRandom(5, 20)),
            end: Offset(getRandom(-10, 20), getRandom(10, 20) * -1))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.slowMiddle));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circle = getRandom(50, 100);
    return SlideTransition(
      position: animation,
      child: Container(
        decoration: BoxDecoration(
          color: light.withOpacity(getRandom(0.1, 1)),
          shape: BoxShape.circle,
        ),
        width: circle,
        height: circle,
      ),
    );
  }
}
