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
  RxBool owShow = false.obs;
  RxBool inShow = false.obs;
  RxBool thShow = false.obs;
  RxList<String> favoritesList = [''].obs;
  RxList<MvPHero> owShowcase = [
    ...DB.owMvPs
        .where((mvp) => false)
        .map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))
  ].obs;
  RxList<MvPHero> inShowcase = [
    ...DB.inMvPs
        .where((mvp) => false)
        .map((mvp) => MvPHero(tag: mvp.name, mvp: mvp))
  ].obs;
  RxList<MvPHero> thShowcase = [
    ...DB.thMvPs
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
          getNewShowcase(owShowcase, DB.owMvPs),
          getNewShowcase(inShowcase, DB.inMvPs),
          getNewShowcase(thShowcase, DB.thMvPs)
        });
  }

  void startPrefs() async {
    favoritesList.value = [];
    List<String>? favs;
    await _prefs.then((instance) => {
          favs = instance.getStringList(FAVORITES),
          if (favs == null)
            {instance.setStringList(FAVORITES, [])}
          else
            {favoritesList.value = favs!}
        });
    getNewShowcase(owShowcase, DB.owMvPs);
    getNewShowcase(inShowcase, DB.inMvPs);
    getNewShowcase(thShowcase, DB.thMvPs);
  }

  getNewShowcase(RxList<MvPHero> obs, List<DB.MvP> list) {
    obs.value = RxList<MvPHero>([
      ...list.where((mvp) {
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
    getNewShowcase(owShowcase, DB.owMvPs);
    getNewShowcase(inShowcase, DB.inMvPs);
    getNewShowcase(thShowcase, DB.thMvPs);
  }
}
