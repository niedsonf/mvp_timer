import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/mvp_hero/hero_action_button.dart';
import 'package:mvp_timer/widgets/mvp_hero/mvp_hero_info.dart';
import 'package:mvp_timer/widgets/mvp_showcase/mvp_showcase.dart';
import 'package:mvp_timer/widgets/timer_dialog/timer_dialog.dart';

class MvPHero extends StatelessWidget {
  final String tag;
  final MvP mvp;
  const MvPHero({Key? key, required this.tag, required this.mvp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Obx(
      () => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Hero(
              tag: tag,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              MvPShowcase(mvp: mvp, tag: tag))));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: !favoritesController.favoritesList.value
                                        .contains(mvp.id.toString())
                                    ? light.withOpacity(.5)
                                    : red),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  light.withOpacity(.3),
                                  light.withOpacity(.1)
                                ]),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: MvPHeroInfo(mvp: mvp)),
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: favoritesController.favoritesList.value
                .contains(mvp.id.toString()),
            child: Positioned(
                right: 0,
                bottom: 60,
                child: HeroActionButton(
                    color: Colors.black,
                    onTap: () {
                      favoritesController.removeFavorite(mvp.id);
                      Get.snackbar('MvP removido dos favoritos D;',
                          'Não termine sua coleção assim!',
                          maxWidth: _size.width * 0.4,
                          shouldIconPulse: true,
                          icon: Icon(Icons.heart_broken),
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2));
                    },
                    icon: Icons.heart_broken)),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: HeroActionButton(
                  color: blue,
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => TimerDialog(mvp: mvp)),
                  icon: Icons.timer)),
          Visibility(
            visible: !favoritesController.favoritesList.value
                .contains(mvp.id.toString()),
            child: Positioned(
                right: 0,
                bottom: 60,
                child: HeroActionButton(
                    color: red,
                    onTap: () {
                      favoritesController.addFavorite(mvp.id);
                      Get.snackbar('MvP favoritado ;D',
                          'Que tal adicionarmos mais um a lista de caça?',
                          shouldIconPulse: true,
                          icon: Icon(Icons.favorite),
                          maxWidth: _size.width * 0.4,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2));
                    },
                    icon: Icons.favorite)),
          ),
        ],
      ),
    );
  }
}
