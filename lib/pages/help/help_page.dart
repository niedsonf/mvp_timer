import 'package:flutter/material.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(),
        SliverToBoxAdapter(
          child: Center(
            child: CustomText(text: 'Help Page', size: 30),
          ),
        )
      ],
    );
  }
}
