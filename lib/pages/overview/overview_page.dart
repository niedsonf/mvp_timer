import 'package:flutter/material.dart';
import 'package:mvp_timer/pages/overview/mvp_grid.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(),
        SliverPadding(padding: EdgeInsets.all(15), sliver: MvPGrid())
      ],
    );
  }
}
