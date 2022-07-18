import 'package:flutter/material.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(),
        SliverToBoxAdapter(
          child: Center(
            child: CustomText(text: 'Favorites Page', size: 30),
          ),
        )
      ],
    );
  }
}
