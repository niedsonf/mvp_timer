import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class ShowcaseLinkButton extends StatefulWidget {
  final Function() onTap;
  final String text;
  final Color color;
  final IconData icon;
  const ShowcaseLinkButton(
      {Key? key,
      required this.onTap,
      required this.text,
      required this.color,
      required this.icon})
      : super(key: key);

  @override
  State<ShowcaseLinkButton> createState() => _ShowcaseLinkButtonState();
}

class _ShowcaseLinkButtonState extends State<ShowcaseLinkButton>
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
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: InkWell(
        onTap: () {
          animationController.forward().whenComplete(() => {
                animationController.reverse().whenComplete(() => widget.onTap())
              });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: widget.color),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: widget.text, size: 14),
              const SizedBox(width: 10),
              Icon(widget.icon, size: 16, color: light)
            ],
          ),
        ),
      ),
    );
  }
}
