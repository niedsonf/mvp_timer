import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/element_text.dart';
import 'package:mvp_timer/widgets/timer_dialog/custom_text_input.dart';
import 'package:mvp_timer/widgets/timer_dialog/timer_dialog_button.dart';

class TimerDialog extends StatefulWidget {
  final MvP mvp;
  const TimerDialog({Key? key, required this.mvp}) : super(key: key);

  @override
  State<TimerDialog> createState() => _TimerDialogState();
}

class _TimerDialogState extends State<TimerDialog> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AlertDialog(
        scrollable: true,
        contentPadding: const EdgeInsets.all(0),
        backgroundColor: darker,
        content: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(border: Border.all(color: light)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomText(text: 'Adicionar timer de respawn', size: 30),
                CustomTextInput(
                    inputController: timerDialogController.positionX,
                    inputFormatters: [positionMaskFormatter()],
                    labelText: 'Posição X',
                    inputType: TextInputType.number,
                    icon: Icons.location_pin),
                CustomTextInput(
                    inputController: timerDialogController.positionY,
                    inputFormatters: [positionMaskFormatter()],
                    labelText: 'Posição Y',
                    icon: Icons.location_pin),
                CustomTextInput(
                    inputController: timerDialogController.time,
                    inputFormatters: [timeMaskFormatter()],
                    labelText: 'Tempo',
                    icon: Icons.location_pin),
                DropdownButton(
                    underline: Container(),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    dropdownColor: lightDark,
                    icon: Icon(Icons.arrow_downward, color: light),
                    value: timerDialogController.mapId.value,
                    items: widget.mvp.spawnMaps
                        .map((e) => DropdownMenuItem(
                            value: e.mapId,
                            child: ElementText(
                                text: e.mapId,
                                bgColor: neutralColor,
                                textColor: darker)))
                        .toList(),
                    onChanged: (value) {
                      timerDialogController.mvp.value = widget.mvp;
                      timerDialogController.mapId.value = value.toString();
                    }),
                TimerDialogButton(
                    onTap: () => Navigator.pop(context),
                    text: 'Adicionar',
                    color: blue),
                Image.network(widget.mvp.gifUrl, width: 50, height: 50)
              ]),
        ),
      ),
    );
  }
}
