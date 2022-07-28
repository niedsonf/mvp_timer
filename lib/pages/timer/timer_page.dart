import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/modals/timer.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';
import 'package:mvp_timer/widgets/timer_unit/time_card.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomScrollView(
        slivers: [
          MvPsSliverAppbar(contentController: searchController),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              ...timerDialogController.times.map((time) {
                Timer timeModal = Timer.fromJson(time);
                return Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: TimeCard(timer: timeModal));
              })
            ]),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}
