import 'package:flutter/material.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';
import 'package:mvp_timer/pages/overview/overview_page.dart';
import 'package:mvp_timer/widgets/large_screen.dart';
import 'package:mvp_timer/widgets/sliver_appbar/menu_drawer.dart';
import 'package:mvp_timer/widgets/small_screen.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: navigationController.scaffoldKey,
      drawer: MenuDrawer(),
      body: ResponsiveWidget(
          smallScreen: SmallScreen(), largeScreen: LargeScreen()),
    );
  }
}
