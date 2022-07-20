import 'package:flutter/material.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/mvp_grid.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(
          contentController: searchController,
        ),
        SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: MvPGrid(contentController: searchController))
      ],
    );
  }
}
