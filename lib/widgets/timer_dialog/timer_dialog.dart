import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:mvp_timer/widgets/close_button.dart';
import 'package:mvp_timer/widgets/sliver_appbar/menu_drawer_item.dart';
import 'package:mvp_timer/widgets/timer_dialog/custom_text_input.dart';

class TimerDialog extends StatelessWidget {
  const TimerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: darker,
      content: Column(children: [
        CustomTextInput(
            inputController: timerDialogController.positionX,
            labelText: 'Posição X',
            inputType: TextInputType.number,
            icon: Icons.location_pin),
        CustomTextInput(
            inputController: timerDialogController.positionY,
            labelText: 'Posição Y',
            icon: Icons.location_pin),
        CustomTextInput(
            inputController: timerDialogController.time,
            labelText: 'Tempo',
            icon: Icons.location_pin),
      ]),
    );
  }
}
