import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        Obx(
          () => SliverVisibility(
              visible: favoritesController.owShow.value,
              sliver: const GroupTitle(text: 'MvPs de Mapa Aberto')),
        ),
        Obx(
          () => SliverVisibility(
            visible: favoritesController.owShow.value,
            sliver: GridShowcase(
                contentController: favoritesController,
                group: MvPGroup.OW,
                color: lightDark),
          ),
        ),
        Obx(
          () => SliverVisibility(
            visible: favoritesController.owShow.value,
            sliver: const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
          ),
        ),
        Obx(
          () => SliverVisibility(
              visible: favoritesController.inShow.value,
              sliver: const GroupTitle(text: 'MvPs de Instância')),
        ),
        Obx(
          () => SliverVisibility(
            visible: favoritesController.inShow.value,
            sliver: GridShowcase(
                contentController: favoritesController,
                group: MvPGroup.IN,
                color: lightDark),
          ),
        ),
        Obx(
          () => SliverVisibility(
            visible: favoritesController.inShow.value,
            sliver: const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
          ),
        ),
        Obx(
          () => SliverVisibility(
              visible: favoritesController.thShow.value,
              sliver: const GroupTitle(text: 'MvPs da Tumba da Honra')),
        ),
        Obx(
          () => SliverVisibility(
            visible: favoritesController.thShow.value,
            sliver: GridShowcase(
                contentController: favoritesController,
                group: MvPGroup.TH,
                color: lightDark),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ],
    );
  }
}
