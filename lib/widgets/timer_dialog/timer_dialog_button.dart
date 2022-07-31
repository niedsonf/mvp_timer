import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class TimerDialogButton extends StatefulWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const TimerDialogButton(
      {Key? key, required this.onTap, required this.text, required this.color})
      : super(key: key);

  @override
  State<TimerDialogButton> createState() => _TimerDialogButtonState();
}

class _TimerDialogButtonState extends State<TimerDialogButton>
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
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        radius: 10,
        onTap: () {
          animationController.forward().whenComplete(() => {
                animationController.reverse().whenComplete(() => widget.onTap())
              });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.color,
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
            children: [
              CustomText(text: widget.text),
              Icon(Icons.add, color: light)
            ],
          ),
        ),
      ),
    );
  }
}
