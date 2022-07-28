import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/helpers/responsiveness.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/element_text.dart';
import 'package:mvp_timer/widgets/mvp_showcase/action_button_showcase.dart';
import 'package:mvp_timer/widgets/mvp_showcase/elements_damage_table.dart';
import 'package:mvp_timer/widgets/mvp_showcase/showcase_floating_button.dart';
import 'package:mvp_timer/widgets/mvp_showcase/spawnmaps_table.dart';
import 'package:mvp_timer/widgets/timer_dialog/timer_dialog.dart';

class MvPShowcase extends StatelessWidget {
  final MvP mvp;
  final int tag;
  const MvPShowcase({Key? key, required this.mvp, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: lightDark,
      floatingActionButton: showcaseFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Obx(
        () => Hero(
          tag: tag,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
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
                            const BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomText(text: 'LV. ${mvp.level}'),
                                  Visibility(
                                    visible: mvp.greenAura,
                                    child: ElementText(
                                        text: 'AURA VERDE',
                                        bgColor: Colors.green,
                                        textColor: light),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              CustomText(text: mvp.name, size: 22),
                              CustomText(
                                  text: '❤HP ${applyHPMask(mvp.hp)}',
                                  color: Colors.red),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  mvp.element.widget,
                                  mvp.race.widget,
                                  mvp.size.widget
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container()),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Visibility(
                                        visible: !favoritesController
                                            .favoritesList.value
                                            .contains(mvp.id.toString()),
                                        child: ActionButtonShowcase(
                                            onTap: () {
                                              favoritesController
                                                  .addFavorite(mvp.id);
                                              Get.snackbar('MvP favoritado ;D',
                                                  'Que tal adicionarmos mais um a lista de caça?',
                                                  shouldIconPulse: true,
                                                  icon: Icon(Icons.favorite),
                                                  maxWidth: _size.width * 0.4,
                                                  snackPosition:
                                                      SnackPosition.TOP,
                                                  duration: const Duration(
                                                      seconds: 2));
                                            },
                                            color: red,
                                            icon: Icons.favorite,
                                            text: 'Favoritar'),
                                      ),
                                      Visibility(
                                        visible: favoritesController
                                            .favoritesList.value
                                            .contains(mvp.id.toString()),
                                        child: ActionButtonShowcase(
                                            onTap: () {
                                              favoritesController
                                                  .removeFavorite(mvp.id);
                                              Get.snackbar(
                                                  'MvP removido dos favoritos D;',
                                                  'Não termine sua coleção assim!',
                                                  maxWidth: _size.width * 0.4,
                                                  shouldIconPulse: true,
                                                  icon:
                                                      Icon(Icons.heart_broken),
                                                  snackPosition:
                                                      SnackPosition.TOP,
                                                  duration: const Duration(
                                                      seconds: 2));
                                            },
                                            color: undeadColor,
                                            icon: Icons.heart_broken,
                                            text: 'Desfavoritar'),
                                      ),
                                      const SizedBox(height: 30),
                                      ActionButtonShowcase(
                                          onTap: () => showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  TimerDialog(mvp: mvp)),
                                          color: blue,
                                          icon: Icons.timer,
                                          text: 'Timer'),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Image.network(
                                    mvp.gifUrl,
                                    height:
                                        ResponsiveWidget.isLargeScreen(context)
                                            ? 300
                                            : 150,
                                    width:
                                        ResponsiveWidget.isLargeScreen(context)
                                            ? 300
                                            : 150,
                                  ),
                                  Expanded(child: Container()),
                                ],
                              ),
                              CustomText(text: 'ID: ${mvp.id}'),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: ListView(
                                children: [
                                  const SizedBox(height: 30),
                                  const CustomText(
                                    text: 'Fraquezas Elementais',
                                    size: 30,
                                  ),
                                  const SizedBox(height: 15),
                                  ElementsDamageTable(mvp: mvp),
                                  const SizedBox(height: 30),
                                  const CustomText(
                                    text: 'Mapa(s) de Spawn',
                                    size: 30,
                                  ),
                                  const SizedBox(height: 15),
                                  SpawnmapsTable(mvp: mvp),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            ))
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
