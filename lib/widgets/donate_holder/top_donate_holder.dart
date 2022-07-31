import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/donate_holder/radial_animation.dart';
import 'package:mvp_timer/widgets/donate_holder/top_donate_unit.dart';

class TopDonateHolder extends StatefulWidget {
  const TopDonateHolder({Key? key}) : super(key: key);

  @override
  State<TopDonateHolder> createState() => _TopDonateHolderState();
}

class _TopDonateHolderState extends State<TopDonateHolder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: rubyColor),
                TopDonateUnit(color: rubyColor),
              ],
            )
          ],
        ),
        const SizedBox(height: 50),
        Row(
          children: [
            Expanded(child: Container()),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: sapphireColor),
                TopDonateUnit(color: sapphireColor),
              ],
            ),
            Expanded(child: Container()),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: sapphireColor),
                TopDonateUnit(color: sapphireColor),
              ],
            ),
            Expanded(child: Container()),
          ],
        ),
        const SizedBox(height: 80),
        Row(
          children: [
            Expanded(child: Container()),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: emeraldColor),
                TopDonateUnit(color: emeraldColor),
              ],
            ),
            Expanded(child: Container()),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: emeraldColor),
                TopDonateUnit(color: emeraldColor),
              ],
            ),
            Expanded(child: Container()),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                DonateRadialAnimation(color: emeraldColor),
                TopDonateUnit(color: emeraldColor),
              ],
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
