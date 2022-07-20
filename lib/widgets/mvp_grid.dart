import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';

import 'package:mvp_timer/widgets/custom_text.dart';

class MvPGrid extends StatefulWidget {
  var contentController;
  MvPGrid({Key? key, required this.contentController}) : super(key: key);

  @override
  State<MvPGrid> createState() => _MvPGridState();
}

class _MvPGridState extends State<MvPGrid> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (searchController.theShowcase.value.isEmpty) {
        return const SliverToBoxAdapter(
          child: Center(
            child: CustomText(
                text:
                    'Oops!\nAcho que não há MvP com esses filtros na nossa database D;',
                size: 30),
          ),
        );
      } else {
        return SliverGrid.count(
          crossAxisCount: ResponsiveWidget.isMediumScreen(context) ? 3 : 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [...widget.contentController.theShowcase],
        );
      }
    });
  }
}
