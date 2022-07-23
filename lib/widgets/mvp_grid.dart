import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';

import 'package:mvp_timer/widgets/custom_text.dart';

class MvPGrid extends StatefulWidget {
  var contentController;
  final MvPGroup group;
  MvPGrid({Key? key, required this.contentController, required this.group})
      : super(key: key);

  @override
  State<MvPGrid> createState() => _MvPGridState();
}

class _MvPGridState extends State<MvPGrid> {
  @override
  Widget build(BuildContext context) {
    var theShowcase = widget.group == MvPGroup.OW
        ? widget.contentController.owShowcase
        : widget.group == MvPGroup.IN
            ? widget.contentController.inShowcase
            : widget.contentController.thShowcase;
    return Obx(() {
      return theShowcase.length > 0
          ? SliverGrid.count(
              crossAxisCount: ResponsiveWidget.isMediumScreen(context) ? 3 : 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [...theShowcase])
          : const SliverToBoxAdapter(
              child: CustomText(
                  text: 'Nenhum MvP encontrado com esses filtros ;C'));
    });
  }
}
