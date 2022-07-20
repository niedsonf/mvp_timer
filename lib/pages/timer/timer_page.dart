import 'package:flutter/material.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(contentController: searchController),
        SliverToBoxAdapter(
          child: Center(
            child: CustomText(text: 'Timer Page', size: 30),
          ),
        )
      ],
    );
  }
}
