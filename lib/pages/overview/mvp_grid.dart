import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';
import 'package:mvp_timer/pages/overview/mvp_hero.dart';

class MvPGrid extends StatefulWidget {
  const MvPGrid({Key? key}) : super(key: key);

  @override
  State<MvPGrid> createState() => _MvPGridState();
}

class _MvPGridState extends State<MvPGrid> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliverGrid.count(
        crossAxisCount: ResponsiveWidget.isMediumScreen(context) ? 3 : 5,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [...searchController.theShowcase.value],
      ),
    );
  }
}
