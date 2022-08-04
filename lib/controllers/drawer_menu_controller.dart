import 'package:get/get.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:flutter/material.dart';

class DrawerMenuController extends GetxController {
  static DrawerMenuController instance = Get.find();

  RxString activePage = OverviewPageRoute.obs;
  RxString onHover = ''.obs;

  setActive(String pageRoute) {
    activePage.value = pageRoute;
  }

  setHover(String pageRoute) {
    if (!isActive(pageRoute)) {
      onHover.value = pageRoute;
    }
  }

  bool isActive(String pageRoute) => pageRoute == activePage.value;
  bool isHovering(String pageRoute) => pageRoute == onHover.value;

  Widget returnIconFor(String pageRoute) {
    switch (pageRoute) {
      case OverviewPageDisplayName:
        return _customIcon(Icons.list);
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
