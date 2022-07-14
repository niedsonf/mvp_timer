import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/controllers/navigation_controller.dart';
import 'package:mvp_timer/controllers/search_controller.dart';
import 'package:mvp_timer/layout.dart';
import 'package:mvp_timer/routing/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SearchController());
  Get.put(NavigationController());
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
