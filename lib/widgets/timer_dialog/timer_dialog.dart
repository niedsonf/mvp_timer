import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/modals/timer.dart';
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
  void initState() {
    timerDialogController.selectedMap.value = widget.mvp.spawnMaps.first;
    timerDialogController.selectedMvp.value = widget.mvp;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: darker,
      content: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(border: Border.all(color: light)),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(text: 'Adicionar timer\nde respawn', size: 20),
              InkWell(
                  customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(50)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Image.asset('assets/Ecks.gif'),
                  ))
            ],
          ),
          const SizedBox(height: 30),
          CustomTextInput(
              inputController: timerDialogController.positionX,
              inputFormatters: [positionMaskFormatter()],
              labelText: 'Posição X',
              inputType: TextInputType.number,
              icon: Icons.location_pin),
          const SizedBox(height: 30),
          CustomTextInput(
              inputController: timerDialogController.positionY,
              inputFormatters: [positionMaskFormatter()],
              labelText: 'Posição Y',
              icon: Icons.location_pin),
          const SizedBox(height: 30),
          CustomTextInput(
              inputController: timerDialogController.time,
              inputFormatters: [timeMaskFormatter()],
              labelText: 'Tempo',
              icon: Icons.location_pin),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(text: 'Mapa:'),
              DropdownButton(
                  underline: Container(),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  dropdownColor: lightDark,
                  icon: Icon(Icons.arrow_downward, color: light),
                  value: widget.mvp.spawnMaps.first,
                  items: widget.mvp.spawnMaps
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: ElementText(
                              text: e.mapId,
                              bgColor: neutralColor,
                              textColor: darker)))
                      .toList(),
                  onChanged: (SpawnMap? value) {
                    timerDialogController.selectedMvp.value = widget.mvp;
                    timerDialogController.selectedMap.value = value!;
                  }),
            ],
          ),
          const SizedBox(height: 40),
          TimerDialogButton(
              onTap: () {
                timerDialogController.setTimer();
                Navigator.pop(context);
              },
              text: 'Adicionar',
              color: blue),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
