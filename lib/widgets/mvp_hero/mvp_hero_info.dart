import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';

import 'package:mvp_timer/widgets/element_text.dart';

class MvPHeroInfo extends StatelessWidget {
  final MvP mvp;
  const MvPHeroInfo({Key? key, required this.mvp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('LV. ${mvp.level.toString()} ',
                style:
                    TextStyle(color: light, fontSize: 14, letterSpacing: 1.3)),
            Visibility(
                visible: mvp.greenAura,
                child: ElementText(
                    text: 'Aura Verde',
                    bgColor: Colors.green,
                    textColor: light))
          ],
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: '${mvp.name}\n',
                  style: TextStyle(
                      color: light,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3)),
              TextSpan(
                  text: '❤HP ${applyHPMask(mvp.hp)}',
                  style: TextStyle(
                      color: red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3)),
            ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mvp.element.widget,
                const SizedBox(height: 10),
                mvp.race.widget,
                const SizedBox(height: 10),
                mvp.size.widget,
              ],
            ),
            Expanded(child: Container()),
            Image.network(
              mvp.gifUrl,
              height: ResponsiveWidget.isLargeScreen(context) ? 80 : 140,
              width: ResponsiveWidget.isLargeScreen(context) ? 80 : 140,
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
