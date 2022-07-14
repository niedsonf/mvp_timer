import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';
import 'package:mvp_timer/pages/overview/mvp_showcase/mvp_showcase.dart';
import 'package:mvp_timer/widgets/element_text.dart';
import 'package:mvp_timer/widgets/mvp_hero_info.dart';

class MvPHero extends StatelessWidget {
  final String tag;
  final MvP mvp;
  const MvPHero({Key? key, required this.tag, required this.mvp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => MvPShowcase(mvp: mvp, tag: tag))));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: light.withOpacity(.5)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [light.withOpacity(.3), light.withOpacity(.1)]),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: MvPHeroInfo(mvp: mvp)),
          ),
        ),
      ),
    );
  }
}
