import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class MapPointer extends StatefulWidget {
  final double positionX;
  final double positionY;
  const MapPointer({Key? key, required this.positionX, required this.positionY})
      : super(key: key);

  @override
  State<MapPointer> createState() => _MapPointerState();
}

class _MapPointerState extends State<MapPointer> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController radialAnimationController;
  late Animation<double> scaleAnimation;
  late Animation<double> radialScaleAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..repeat(reverse: true);
    radialAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: false);
    scaleAnimation = Tween<double>(begin: 1, end: 0.7).animate(
        CurvedAnimation(parent: animationController, curve: Curves.decelerate));
    radialScaleAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: radialAnimationController, curve: Curves.decelerate));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    radialAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: widget.positionX,
        bottom: widget.positionY,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ScaleTransition(
                scale: radialScaleAnimation,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(color: blue)),
                )),
            ScaleTransition(
                scale: scaleAnimation,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: light, blurRadius: 6)],
                      shape: BoxShape.circle,
                      color: blue),
                )),
          ],
        ));
  }
}
