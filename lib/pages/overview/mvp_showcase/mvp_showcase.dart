import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';
import 'package:mvp_timer/pages/overview/mvp_showcase/elements_damage_table.dart';
import 'package:mvp_timer/pages/overview/mvp_showcase/showcase_floating_button.dart';
import 'package:mvp_timer/pages/overview/mvp_showcase/spawnmaps_table.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/element_text.dart';

class MvPShowcase extends StatelessWidget {
  final MvP mvp;
  final String tag;
  const MvPShowcase({Key? key, required this.mvp, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: showcaseFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Hero(
        tag: tag,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: light.withOpacity(.5)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [
                            light.withOpacity(.3),
                            light.withOpacity(.1)
                          ]),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(text: 'LV. ${mvp.level}'),
                                Visibility(
                                  visible: mvp.greenAura,
                                  child: ElementText(
                                      text: 'AURA VERDE',
                                      bgColor: Colors.green,
                                      textColor: light),
                                )
                              ],
                            ),
                            CustomText(text: mvp.name, size: 22),
                            CustomText(
                                text: '❤HP ${applyHPMask(mvp.hp)}',
                                color: Colors.red),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                mvp.element.widget,
                                mvp.race.widget,
                                mvp.size.widget
                              ],
                            ),
                            Image.network(
                              mvp.gifUrl,
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? 300
                                  : 150,
                              width: ResponsiveWidget.isLargeScreen(context)
                                  ? 300
                                  : 150,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: ListView(
                            children: [
                              SizedBox(
                                width: _size.width * 0.4,
                                child: ElementsDamageTable(mvp: mvp),
                              ),
                              SizedBox(
                                width: _size.width * 0.4,
                                child: SpawnmapsTable(mvp: mvp),
                              )
                            ],
                          ))
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
