import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/modals/timer.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/timer_unit/map_pointer.dart';
import 'package:mvp_timer/widgets/timer_unit/time_button_wraper.dart';
import 'package:mvp_timer/widgets/timer_unit/time_card_mvp.dart';

class TimeCard extends StatefulWidget {
  Timer timer;
  TimeCard({Key? key, required this.timer}) : super(key: key);

  @override
  State<TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  @override
  Widget build(BuildContext context) {
    MvP mvp =
        allMvPs.where((mvp) => mvp.id.toString() == widget.timer.id).single;
    SpawnMap spawnMap =
        mvp.spawnMaps.where((map) => map.mapId == widget.timer.spawnMap).single;
    return Card(
      color: lightDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TimeCardMvP(
            mvp: mvp,
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://www.divine-pride.net/img/map/original/moc_fild17',
                      width: 200,
                      height: 200,
                    ),
                    const MapPointer(positionX: 217 * 0.5, positionY: 276 * 0.5)
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          color: darkBlue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 8,
                              color: Colors.black26,
                            )
                          ]),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Posição X: ',
                            style: TextStyle(color: light)),
                        TextSpan(
                            text: '${widget.timer.positionX}\n',
                            style: TextStyle(color: light, fontSize: 20)),
                        TextSpan(
                            text: 'Posição Y: ',
                            style: TextStyle(color: light)),
                        TextSpan(
                            text: '${widget.timer.positionY}',
                            style: TextStyle(color: light, fontSize: 20)),
                      ])),
                    ),
                    const SizedBox(height: 25),
                    CustomText(text: 'RESPAWN'),
                    CountdownTimer(
                      textStyle: TextStyle(color: red, fontSize: 18),
                      endWidget: const CustomText(
                          text: 'MvP vivo!', color: Colors.green),
                      endTime: DateTime.parse(widget.timer.time!)
                          .millisecondsSinceEpoch,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: TimeButtonWraper(
            json: widget.timer.toJson(),
            mvp: mvp,
            timer: widget.timer,
          )),
          const SizedBox(width: 30)
        ],
      ),
    );
  }
}