import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart' as DB;
import 'package:mvp_timer/pages/overview/mvp_hero.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  static SearchController instance = Get.find();

  TextEditingController searchTextController = TextEditingController();
  RxString searchText = ''.obs;
  Rx<DB.Race?> selectedRace = DB.Races.all.obs;
  Rx<DB.Element?> selectedElement = DB.Elements.all.obs;
  Rx<DB.MvPSize?> selectedSize = DB.MvPSizes.all.obs;
  RxList<MvPHero> theShowcase =
      [...DB.owMvPs.map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))].obs;

  getNewShowcase() {
    theShowcase.value = RxList<MvPHero>([
      ...DB.owMvPs.where((mvp) {
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
    getNewShowcase();
  }
}
