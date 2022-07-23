import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart' as DB;

import 'package:flutter/material.dart';
import 'package:mvp_timer/widgets/mvp_hero/mvp_hero.dart';

class SearchController extends GetxController {
  static SearchController instance = Get.find();

  TextEditingController searchTextController = TextEditingController();
  RxString searchText = ''.obs;
  Rx<DB.Race?> selectedRace = DB.Races.all.obs;
  Rx<DB.Element?> selectedElement = DB.Elements.all.obs;
  Rx<DB.MvPSize?> selectedSize = DB.MvPSizes.all.obs;
  RxBool owShow = true.obs;
  RxBool inShow = true.obs;
  RxBool thShow = true.obs;
  RxList<MvPHero> owShowcase =
      [...DB.owMvPs.map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))].obs;
  RxList<MvPHero> inShowcase =
      [...DB.inMvPs.map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))].obs;
  RxList<MvPHero> thShowcase =
      [...DB.thMvPs.map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))].obs;

  getNewShowcase(RxList<MvPHero> obs, List<DB.MvP> list) {
    obs.value = RxList<MvPHero>([
      ...list.where((mvp) {
        List<Function(DB.MvP mvp)> conditions = [];
        if (searchText.value != '') {
          conditions.add((mvp) => mvp.name.toLowerCase().contains(searchText));
        }
        if (selectedElement.value != DB.Elements.all) {
          conditions.add((mvp) => mvp.element == selectedElement.value);
        }
        if (selectedRace.value != DB.Races.all) {
          conditions.add((mvp) => mvp.race == selectedRace.value);
        }
        if (selectedSize.value != DB.MvPSizes.all) {
          conditions.add((mvp) => mvp.size == selectedSize.value);
        }

        return conditions.every((filter) => filter(mvp));
      }).map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))
    ]);
  }

  applyFilter(
      {String? text, DB.Race? race, DB.Element? element, DB.MvPSize? size}) {
    searchText.value = text ?? searchText.value;
    selectedRace.value = race ?? selectedRace.value;
    selectedElement.value = element ?? selectedElement.value;
    selectedSize.value = size ?? selectedSize.value;
    getNewShowcase(owShowcase, DB.owMvPs);
    getNewShowcase(inShowcase, DB.inMvPs);
    getNewShowcase(thShowcase, DB.thMvPs);
  }
}
