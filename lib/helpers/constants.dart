import 'package:flutter/material.dart';
import 'package:mvp_timer/controllers/drawer_menu_controller.dart';
import 'package:mvp_timer/controllers/favorites_controller.dart';
import 'package:mvp_timer/controllers/navigation_controller.dart';
import 'package:mvp_timer/controllers/search_controller.dart';
import 'package:mvp_timer/controllers/timer_dialog_controller.dart';

SearchController searchController = SearchController.instance;
NavigationController navigationController = NavigationController.instance;
DrawerMenuController drawerMenuController = DrawerMenuController.instance;
TimerDialogController timerDialogController = TimerDialogController.instance;
FavoritesController favoritesController = FavoritesController.instance;
