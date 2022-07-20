import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart' as DB;
import 'package:mvp_timer/widgets/mvp_hero/mvp_hero.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesController extends GetxController {
  final FAVORITES = 'favorites';
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static FavoritesController instance = Get.find();

  TextEditingController searchTextController = TextEditingController();
  RxString searchText = ''.obs;
  Rx<DB.Race?> selectedRace = DB.Races.all.obs;
  Rx<DB.Element?> selectedElement = DB.Elements.all.obs;
  Rx<DB.MvPSize?> selectedSize = DB.MvPSizes.all.obs;
  RxList<String> favoritesList = [''].obs;
  RxList<MvPHero> theShowcase = [
    ...DB.owMvPs
        .where((mvp) => false)
        .map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))
  ].obs;

  void addFavorite(int id) async {
    await _prefs.then((instance) => {
          favoritesList.add(id.toString()),
          loadFavorites(),
        });
  }

  void removeFavorite(int id) async {
    await _prefs.then(
        (instance) => {favoritesList.remove(id.toString()), loadFavorites()});
  }

  void loadFavorites() async {
    await _prefs.then((instance) => {
          instance
              .setStringList(FAVORITES, [...favoritesList.value.map((e) => e)]),
          theShowcase.value = getNewShowcase()
        });
  }

  void startPrefs() async {
    await _prefs.then((instance) => {
          if (instance.getStringList(FAVORITES) == null)
            {instance.setStringList(FAVORITES, []), favoritesList.value = []}
        });
  }

  getNewShowcase() {
    theShowcase.value = RxList<MvPHero>([
      ...DB.owMvPs.where((mvp) {
        List<Function(DB.MvP mvp)> conditions = [];
        conditions.add((mvp) => favoritesList.contains(mvp.id.toString()));
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
