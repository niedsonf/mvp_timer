import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/modals/timer.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:mvp_timer/widgets/timer_dialog/timer_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerDialogController extends GetxController {
  final TIMER = 'timer';
  static TimerDialogController instance = Get.find();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  TextEditingController positionX = TextEditingController();
  TextEditingController positionY = TextEditingController();
  TextEditingController time = TextEditingController();
  Rx<MvP> selectedMvp = allMvPs.first.obs;
  Rx<SpawnMap> selectedMap = allMvPs.first.spawnMaps.first.obs;
  RxList<String> times = [''].obs;

  resetDialog() {
    positionX.text = '';
    positionY.text = '';
    time.text = '';
  }

  removeTimer(String json) async {
    _prefs.then((instance) {
      times.remove(json);
      instance.setStringList(TIMER, [...times]);
      getTimerList();
      resetDialog();
    });
  }

  getTimerList() async {
    _prefs.then((instance) => {times.value = instance.getStringList(TIMER)!});
  }

  updateTimer(String oldJson, newJson) async {
    _prefs.then((instance) {
      int idx = times.indexOf(oldJson);
      times[idx] = newJson;
      instance.setStringList(TIMER, [...times]);
      getTimerList();
      resetDialog();
    });
  }

  setTimer(double width) async {
    DateTime respawn = time.text == ''
        ? DateTime.now().add(Duration(minutes: selectedMap.value.respawn))
        : DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day,
            int.parse(time.text.substring(0, 2)),
            selectedMap.value.respawn + int.parse(time.text.substring(3)));

    String newTime = Timer(
            id: selectedMvp.value.id.toString(),
            spawnMap: selectedMap.value.mapId,
            respawn: selectedMap.value.respawn,
            positionX: positionX.text == '' ? '0' : positionX.text,
            positionY: positionY.text == '' ? '0' : positionY.text,
            time: respawn.toString())
        .toJson();
    _prefs.then((instance) {
      times.add(newTime);
      instance.setStringList(TIMER, [...times]);
      getTimerList();
      resetDialog();
      Get.snackbar('Timer adicionado!', 'Acompanhe na página de Timer',
          maxWidth: width * 0.5,
          shouldIconPulse: true,
          icon: Icon(Icons.timer),
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2));
    });
  }

  void startPrefs() async {
    times.value = [];
    List<String>? picker;
    await _prefs.then((instance) => {
          picker = instance.getStringList(TIMER),
          if (picker == null)
            {instance.setStringList(TIMER, [])}
          else
            {times.value = picker!}
        });
  }
}
