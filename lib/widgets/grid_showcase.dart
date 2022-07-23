import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/mvp_grid.dart';
import 'package:sliver_tools/sliver_tools.dart';

class GridShowcase extends StatelessWidget {
  var contentController;
  final MvPGroup group;
  final Color color;
  GridShowcase(
      {Key? key,
      required this.contentController,
      required this.group,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverStack(children: [
        SliverPositioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 8,
                  color: Colors.black26,
                )
              ],
            ),
          ),
        ),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            sliver: MvPGrid(contentController: contentController, group: group))
      ]),
    );
  }
}
