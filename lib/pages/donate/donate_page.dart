import 'package:flutter/material.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(contentController: searchController),
        SliverToBoxAdapter(
          child: CustomText(
              text:
                  'Página em desenvolvimento, aqui será o mural dos donates!'),
        )
      ],
    );
  }
}
