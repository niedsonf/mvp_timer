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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.network(
                      spawnMap.mapUrl,
                      width: 200,
                      height: 200,
                    ),
                    MapPointer(
                        positionX: int.parse(widget.timer.positionX!) * 0.4,
                        positionY: int.parse(widget.timer.positionY!) * 0.4)
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
                        ]),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 25),
                    CustomText(
                      text: 'RESPAWN',
                      tAlign: TextAlign.center,
                    ),
                    CountdownTimer(
                      textStyle: TextStyle(color: red, fontSize: 18),
                      endWidget: const CustomText(
                          text: 'MvP vivo!',
                          tAlign: TextAlign.center,
                          color: Colors.green),
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
