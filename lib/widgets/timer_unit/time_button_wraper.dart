import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/modals/timer.dart';
import 'package:mvp_timer/widgets/timer_dialog/timer_dialog.dart';
import 'package:mvp_timer/widgets/timer_unit/time_card_button.dart';

class TimeButtonWraper extends StatefulWidget {
  final String json;
  final Timer timer;
  final MvP mvp;
  final GlobalKey cardTimeKey;
  const TimeButtonWraper(
      {Key? key,
      required this.json,
      required this.mvp,
      required this.timer,
      required this.cardTimeKey})
      : super(key: key);

  @override
  State<TimeButtonWraper> createState() => _TimeButtonWraperState();
}

class _TimeButtonWraperState extends State<TimeButtonWraper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TimeCardButton(
          text: 'REMOVER',
          icon: Icons.remove,
          bColor: red,
          onTap: () {
            timerDialogController.removeTimer(widget.json);
          },
        ),
        const SizedBox(height: 15),
        TimeCardButton(
          text: 'TIMER',
          icon: Icons.timer,
          bColor: blue,
          onTap: () => showDialog(
              context: context,
              builder: (context) => TimerDialog(mvp: widget.mvp)),
        ),
        const SizedBox(height: 15),
        TimeCardButton(
            text: 'RESETAR',
            icon: Icons.restore,
            bColor: azulCinza,
            onTap: () {
              timerDialogController.updateTimer(
                  widget.json,
                  Timer.fromJson(widget.json)
                      .changeTime(DateTime.now()
                          .add(Duration(minutes: widget.timer.respawn))
                          .toString())
                      .toJson());
              widget.cardTimeKey.currentState?.build(context);
            }),
      ],
    );
  }
}
