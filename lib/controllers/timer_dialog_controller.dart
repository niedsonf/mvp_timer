import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TimerDialogController extends GetxController {
  static TimerDialogController instance = Get.find();

  TextEditingController positionX = TextEditingController();
  TextEditingController positionY = TextEditingController();
  TextEditingController time = TextEditingController();
}
