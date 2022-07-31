import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/controllers/drawer_menu_controller.dart';
import 'package:mvp_timer/controllers/favorites_controller.dart';
import 'package:mvp_timer/controllers/navigation_controller.dart';
import 'package:mvp_timer/controllers/search_controller.dart';
import 'package:mvp_timer/controllers/timer_dialog_controller.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/layout.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  Get.put(SearchController());
  Get.put(NavigationController());
  Get.put(DrawerMenuController());
  Get.put(TimerDialogController());
  Get.put(FavoritesController());
  favoritesController.startPrefs();
  timerDialogController.startPrefs();
  runApp(const MvPTimer());
}

class MvPTimer extends StatelessWidget {
  const MvPTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RootRoute,
        getPages: [GetPage(name: RootRoute, page: () => const AppLayout())],
        title: 'MvP Timer',
        theme: ThemeData(
            scaffoldBackgroundColor: darker,
            textTheme: GoogleFonts.galindoTextTheme()));
  }
}
