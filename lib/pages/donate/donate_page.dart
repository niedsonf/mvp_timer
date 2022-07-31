import 'package:flutter/material.dart';
import 'package:mvp_timer/widgets/bubbles/bubble_effect.dart';
import 'package:mvp_timer/widgets/default_sliver_appbar/default_appbar.dart';
import 'package:mvp_timer/widgets/donate_holder/mensal_donate_holder.dart';
import 'package:mvp_timer/widgets/donate_holder/top_donate_holder.dart';
import 'package:mvp_timer/widgets/group_title.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DefaultAppbar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 50),
              GroupTitle(text: 'Top Donates'),
              SizedBox(height: 100),
              TopDonateHolder(),
              SizedBox(height: 100),
              GroupTitle(text: 'Donates'),
              SizedBox(height: 100),
              MensalDonateHolder(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }
}
