import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/modals/timer.dart';
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

  setTimer() async {
    print('${time.text} -----------------------\n\n\n\n\n\n');
    DateTime respawn = time.text == ''
        ? DateTime.now().add(Duration(minutes: selectedMap.value.respawn))
        : DateTime.now().toLocal().add(Duration(
            hours: int.parse(time.text.substring(0, 2)),
            minutes:
                selectedMap.value.respawn + int.parse(time.text.substring(3))));
    print(respawn);

    String newTime = Timer(
            id: selectedMvp.value.id.toString(),
            spawnMap: selectedMap.value.mapId,
            respawn: selectedMap.value.respawn,
            positionX: positionX.text,
            positionY: positionY.text,
            time: respawn.toString())
        .toJson();
    _prefs.then((instance) {
      times.add(newTime);
      instance.setStringList(TIMER, [...times]);
      getTimerList();
      resetDialog();
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
