import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Timer {
  late String id;
  late String spawnMap;
  late int respawn;
  String? time;
  String? positionX;
  String? positionY;

  Timer(
      {required this.id,
      required this.spawnMap,
      required this.respawn,
      this.time,
      this.positionX,
      this.positionY});

  Timer.fromJson(String jsonString) {
    Map<String, dynamic> data = json.decode(jsonString);
    id = data['id'];
    spawnMap = data['spawnmap'];
    respawn = data['respawn'];
    time = data['time'];
    positionX = data['positionX'];
    positionY = data['positionY'];
  }

  Timer changeTime(String newTime) {
    time = newTime;
    return this;
  }

  String toJson() {
    var literalObj = {
      'id': id,
      'spawnmap': spawnMap,
      'respawn': respawn,
      'time': time,
      'positionX': positionX,
      'positionY': positionY
    };
    return json.encode(literalObj);
  }
}
