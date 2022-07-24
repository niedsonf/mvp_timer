import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';

class TimerDialogController extends GetxController {
  static TimerDialogController instance = Get.find();

  TextEditingController positionX = TextEditingController();
  TextEditingController positionY = TextEditingController();
  TextEditingController time = TextEditingController();
  Rx<MvP> mvp = owMvPs.first.obs;
  RxString mapId = 'Duvido'.obs;
}
