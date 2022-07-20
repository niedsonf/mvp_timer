import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class HeroActionButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final Function() onTap;

  const HeroActionButton(
      {Key? key, required this.color, required this.onTap, required this.icon})
      : super(key: key);

  @override
  State<HeroActionButton> createState() => _HeroActionButtonState();
}

class _HeroActionButtonState extends State<HeroActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 50));
    scaleAnimation = Tween<double>(begin: 1, end: 0.85).animate(
        CurvedAnimation(parent: animationController, curve: Curves.decelerate));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {
          animationController.forward().whenComplete(() => {
                animationController.reverse().whenComplete(() => widget.onTap())
              });
        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color,
              border: Border.all(color: light)),
          padding: const EdgeInsets.all(8),
          child: Icon(widget.icon, color: light, size: 24),
        ),
      ),
    );
  }
}
