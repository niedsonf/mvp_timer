import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/grid_showcase.dart';
import 'package:mvp_timer/widgets/group_title.dart';
import 'package:mvp_timer/widgets/sliver_appbar/mvps_sliver_appbar.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MvPsSliverAppbar(
          contentController: favoritesController,
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const GroupTitle(text: 'MvPs de Mapa'),
        GridShowcase(
            contentController: favoritesController,
            group: MvPGroup.OW,
            color: lightDark),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const GroupTitle(text: 'MvPs de Instância'),
        GridShowcase(
            contentController: favoritesController,
            group: MvPGroup.IN,
            color: lightDark),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const GroupTitle(text: 'MvPs da Tumba da Honra'),
        GridShowcase(
            contentController: favoritesController,
            group: MvPGroup.TH,
            color: lightDark),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ],
    );
  }
}
