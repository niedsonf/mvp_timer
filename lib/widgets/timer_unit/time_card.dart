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
  bool isAlive = false;
  final timeCardKey = GlobalKey();
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
            isAlive: widget.isAlive,
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.network(
                      spawnMap.mapUrl,
                      width: 200,
                      height: 200,
                    ),
                    MapPointer(
                        isAlive: widget.isAlive,
                        positionX: int.parse(widget.timer.positionX!) * 0.38,
                        positionY: int.parse(widget.timer.positionY!) * 0.38)
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: 'Posi????o X: ',
                              style: TextStyle(color: light)),
                          TextSpan(
                              text: '${widget.timer.positionX}\n',
                              style: TextStyle(color: light, fontSize: 20)),
                          TextSpan(
                              text: 'Posi????o Y: ',
                              style: TextStyle(color: light)),
                          TextSpan(
                              text: '${widget.timer.positionY}',
                              style: TextStyle(color: light, fontSize: 20)),
                        ]),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 25),
                    CustomText(
                      text: 'RESPAWN',
                      tAlign: TextAlign.center,
                    ),
                    CountdownTimer(
                      endTime: DateTime.parse(widget.timer.time!)
                          .millisecondsSinceEpoch,
                      onEnd: () {
                        setState(() {
                          widget.isAlive = true;
                        });
                      },
                      textStyle: TextStyle(color: red, fontSize: 18),
                      endWidget: const CustomText(
                          text: 'MvP vivo!',
                          tAlign: TextAlign.center,
                          color: Colors.green),
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
            cardTimeKey: widget.timeCardKey,
          )),
          const SizedBox(width: 30)
        ],
      ),
    );
  }
}
