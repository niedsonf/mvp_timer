import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class DonateRadialAnimation extends StatefulWidget {
  final Color color;
  const DonateRadialAnimation({Key? key, required this.color})
      : super(key: key);

  @override
  State<DonateRadialAnimation> createState() => _DonateRadialAnimationState();
}

class _DonateRadialAnimationState extends State<DonateRadialAnimation>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> scaleAnimation2;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..repeat(reverse: true);
    scaleAnimation = Tween<double>(begin: 1, end: 1.4).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    scaleAnimation2 = Tween<double>(begin: 1.3, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        ScaleTransition(
          scale: scaleAnimation2,
          child: Container(
            padding: const EdgeInsets.all(90),
            decoration: BoxDecoration(
              color: darker,
              boxShadow: [
                BoxShadow(
                    color: light.withOpacity(.3).withAlpha(150),
                    blurRadius: 16,
                    spreadRadius: 4),
                BoxShadow(
                    color: light.withOpacity(.3),
                    blurRadius: 8,
                    spreadRadius: 1),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
        ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            padding: const EdgeInsets.all(90),
            decoration: BoxDecoration(
              color: darker,
              boxShadow: [
                BoxShadow(
                    color: widget.color.withAlpha(150),
                    blurRadius: 16,
                    spreadRadius: 4),
                BoxShadow(color: widget.color, blurRadius: 8, spreadRadius: 1),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
