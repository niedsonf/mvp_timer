import 'package:get/get.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:flutter/material.dart';

class DrawerMenuController extends GetxController {
  static DrawerMenuController instance = Get.find();

  RxString activePage = OverviewPageDisplayName.obs;
  RxString onHover = ''.obs;

  setActive(String pageName) {
    activePage.value = pageName;
  }

  setHover(String pageName) {
    if (!isActive(pageName)) {
      onHover.value = pageName;
    }
  }

  bool isActive(String pageName) => pageName == activePage.value;
  bool isHovering(String pageName) => pageName == onHover.value;

  Widget returnIconFor(String pageName) {
    switch (pageName) {
      case OverviewPageDisplayName:
        return _customIcon(Icons.view_agenda);
      case FavoritePageDisplayName:
        return _customIcon(Icons.favorite);
      case TimerPageDisplayName:
        return _customIcon(Icons.timer);
      case HelpPageDisplayName:
        return _customIcon(Icons.help);
      default:
        return _customIcon(Icons.timer);
    }
  }

  Widget _customIcon(IconData icon) {
    return Icon(icon, size: 30, color: light);
  }
}
