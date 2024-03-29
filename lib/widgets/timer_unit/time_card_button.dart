import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class TimeCardButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color? tColor;
  final Color bColor;
  final Function() onTap;
  const TimeCardButton(
      {Key? key,
      required this.text,
      this.tColor,
      required this.bColor,
      required this.onTap,
      required this.icon})
      : super(key: key);

  @override
  State<TimeCardButton> createState() => _TimeCardButtonState();
}

class _TimeCardButtonState extends State<TimeCardButton>
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
    Size size = MediaQuery.of(context).size;
    return ScaleTransition(
      scale: scaleAnimation,
      child: InkWell(
        onTap: () {
          animationController.forward().whenComplete(() => {
                animationController.reverse().whenComplete(() => widget.onTap())
              });
        },
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          width: size.width * 0.15,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: widget.bColor,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 8,
                  color: Colors.black26,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: widget.text,
                tAlign: TextAlign.center,
              ),
              Icon(widget.icon, color: widget.tColor ?? light)
            ],
          ),
        ),
      ),
    );
  }
}
