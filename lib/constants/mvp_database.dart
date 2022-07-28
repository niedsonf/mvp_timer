import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/element_text.dart';

List<Race> raceList = [
  Races.all,
  Races.angel,
  Races.brute,
  Races.demon,
  Races.dragon,
  Races.fish,
  Races.formless,
  Races.human,
  Races.insect,
  Races.plant,
  Races.undead
];

List<MvPSize> sizeList = [
  MvPSizes.all,
  MvPSizes.small,
  MvPSizes.medium,
  MvPSizes.large,
];

List<Element> elementList = [
  Elements.all,
  Elements.dark,
  Elements.earth,
  Elements.fire,
  Elements.ghost,
  Elements.holy,
  Elements.neutral,
  Elements.poison,
  Elements.undead,
  Elements.water,
  Elements.wind
];

class Race {
  final String name;
  final Widget widget;

  Race({required this.name, required this.widget});
}

class Races {
  static Race all = Race(
      name: 'Todas',
      widget:
          ElementText(text: 'Todas', bgColor: neutralColor, textColor: darker));

  static Race formless = Race(
      name: 'Amorfo',
      widget: ElementText(
          text: 'Amorfo', bgColor: neutralColor, textColor: darker));
  static Race angel = Race(
      name: 'Anjo',
      widget:
          ElementText(text: 'Anjo', bgColor: neutralColor, textColor: darker));
  static Race brute = Race(
      name: 'Bruto',
      widget:
          ElementText(text: 'Bruto', bgColor: neutralColor, textColor: darker));
  static Race demon = Race(
      name: 'Demônio',
      widget: ElementText(
          text: 'Demônio', bgColor: neutralColor, textColor: darker));
  static Race dragon = Race(
      name: 'Dragão',
      widget: ElementText(
          text: 'Dragão', bgColor: neutralColor, textColor: darker));
  static Race human = Race(
      name: 'Humanoid',
      widget: ElementText(
          text: 'Humanoide', bgColor: neutralColor, textColor: darker));
  static Race insect = Race(
      name: 'Inseto',
      widget: ElementText(
          text: 'Inseto', bgColor: neutralColor, textColor: darker));
  static Race undead = Race(
      name: 'Morto-Vivo',
      widget: ElementText(
          text: 'Morto-Vivo', bgColor: neutralColor, textColor: darker));
  static Race fish = Race(
      name: 'Peixe',
      widget:
          ElementText(text: 'Peixe', bgColor: neutralColor, textColor: darker));
  static Race plant = Race(
      name: 'Planta',
      widget: ElementText(
          text: 'Planta', bgColor: neutralColor, textColor: darker));
}

class MvPSize {
  final String name;
  final Widget widget;

  MvPSize({required this.name, required this.widget});
}

class MvPSizes {
  static MvPSize all = MvPSize(
      name: 'Todos',
      widget:
          ElementText(text: 'Todos', bgColor: neutralColor, textColor: darker));

  static MvPSize small = MvPSize(
      name: 'Pequeno',
      widget: ElementText(
          text: 'Pequeno', bgColor: neutralColor, textColor: darker));
  static MvPSize medium = MvPSize(
      name: 'Médio',
      widget:
          ElementText(text: 'Médio', bgColor: neutralColor, textColor: darker));
  static MvPSize large = MvPSize(
      name: 'Grande',
      widget: ElementText(
          text: 'Grande', bgColor: neutralColor, textColor: darker));
}

class Element {
  final String name;
  final Widget widget;

  Element({required this.name, required this.widget});
}

class Elements {
  static Element all = Element(
      name: 'Todos',
      widget:
          ElementText(text: 'Todos', bgColor: neutralColor, textColor: darker));

  static Element neutral = Element(
      name: 'Neutro',
      widget: ElementText(
          text: 'Neutro', bgColor: neutralColor, textColor: darker));
  static Element water = Element(
      name: 'Água',
      widget:
          ElementText(text: 'Água', bgColor: waterColor, textColor: darker));
  static Element earth = Element(
      name: 'Terra',
      widget:
          ElementText(text: 'Terra', bgColor: earthColor, textColor: darker));
  static Element fire = Element(
      name: 'Fogo',
      widget: ElementText(text: 'Fogo', bgColor: fireColor, textColor: darker));
  static Element wind = Element(
      name: 'Vento',
      widget:
          ElementText(text: 'Vento', bgColor: windColor, textColor: darker));
  static Element poison = Element(
      name: 'Veneno',
      widget:
          ElementText(text: 'Veneno', bgColor: poisonColor, textColor: darker));
  static Element holy = Element(
      name: 'Sagrado',
      widget:
          ElementText(text: 'Sagrado', bgColor: holyColor, textColor: darker));
  static Element dark = Element(
      name: 'Sombrio',
      widget:
          ElementText(text: 'Sombrio', bgColor: darkColor, textColor: darker));
  static Element ghost = Element(
      name: 'Fantasma',
      widget: ElementText(
          text: 'Fantasma', bgColor: ghostColor, textColor: darker));
  static Element undead = Element(
      name: 'Maldito',
      widget:
          ElementText(text: 'Maldito', bgColor: undeadColor, textColor: light));
}

class ElementsDamage {
  final double neutral;
  final double water;
  final double earth;
  final double fire;
  final double wind;
  final double poison;
  final double holy;
  final double dark;
  final double ghost;
  final double undead;

  ElementsDamage(
      {required this.neutral,
      required this.water,
      required this.earth,
      required this.fire,
      required this.wind,
      required this.poison,
      required this.holy,
      required this.dark,
      required this.ghost,
      required this.undead});
}

class SpawnMap {
  final String name;
  final String mapId;
  final String mapUrl;
  final int respawn;
  SpawnMap(
      {required this.name,
      required this.mapId,
      required this.mapUrl,
      required this.respawn});
}

class MvP {
  final int id;
  final String name;
  final int level;
  final Race race;
  final MvPSize size;
  final Element element;
  final double hp;
  final bool greenAura;
  final String gifUrl;
  final ElementsDamage elementsDamage;
  final List<SpawnMap> spawnMaps;

  MvP(
      {required this.id,
      required this.name,
      required this.level,
      required this.race,
      required this.size,
      required this.element,
      required this.hp,
      required this.greenAura,
      required this.gifUrl,
      required this.elementsDamage,
      required this.spawnMaps});
}

SpawnMap thMap = SpawnMap(
    name: 'Laboratório de Somatologia (Pesadelo)',
    mapId: 'lhz_dun_n',
    mapUrl: 'https://www.divine-pride.net/img/map/original/lhz_dun_n',
    respawn: 120);

enum MvPGroup { TH, OW, IN }

List<MvP> allMvPs = [...thMvPs, ...owMvPs, ...inMvPs];

List<MvP> thMvPs = [
  MvP(
      id: 3241,
      name: 'Bioquímico Flamel',
      level: 186,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 14400000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3241.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 60,
          fire: -50,
          wind: 100,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3245,
      name: 'Trovador Alphoccio',
      level: 186,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.wind,
      hp: 10800000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3245.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 60,
          earth: 200,
          fire: 100,
          wind: -50,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3246,
      name: 'Musa Trentini',
      level: 186,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.wind,
      hp: 10800000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3246.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 60,
          earth: 200,
          fire: 100,
          wind: -50,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3221,
      name: 'Arcebispa Margaretha',
      level: 187,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.holy,
      hp: 14400000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3221.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 0,
          earth: 0,
          fire: 0,
          wind: 0,
          poison: 0,
          holy: -100,
          dark: 200,
          ghost: 0,
          undead: 175),
      spawnMaps: [thMap]),
  MvP(
      id: 3223,
      name: 'Mecânico Harword',
      level: 187,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.water,
      hp: 18000000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3223.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: -50,
          earth: 100,
          fire: 60,
          wind: 200,
          poison: 25,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3224,
      name: 'Arcana Kathryne',
      level: 187,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.ghost,
      hp: 10800000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3224.gif',
      elementsDamage: ElementsDamage(
          neutral: 0,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 25,
          holy: 100,
          dark: 100,
          ghost: 200,
          undead: 100),
      spawnMaps: [thMap]),
  MvP(
      id: 3240,
      name: 'Guardião Real Randel',
      level: 188,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.holy,
      hp: 18000000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3240.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 0,
          earth: 0,
          fire: 0,
          wind: 0,
          poison: 0,
          holy: -100,
          dark: 200,
          ghost: 0,
          undead: 175),
      spawnMaps: [thMap]),
  MvP(
      id: 3242,
      name: 'Feiticeira Celia',
      level: 188,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.ghost,
      hp: 16200000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3242.gif',
      elementsDamage: ElementsDamage(
          neutral: 0,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 25,
          holy: 100,
          dark: 100,
          ghost: 200,
          undead: 100),
      spawnMaps: [thMap]),
  MvP(
      id: 3243,
      name: 'Shura Chen',
      level: 188,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.water,
      hp: 12600000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3243.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: -50,
          earth: 100,
          fire: 60,
          wind: 200,
          poison: 25,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3244,
      name: 'Renegada Gertie',
      level: 188,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.poison,
      hp: 14400000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3244.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 75,
          earth: 75,
          fire: 75,
          wind: 75,
          poison: 0,
          holy: 125,
          dark: -25,
          ghost: 25,
          undead: -25),
      spawnMaps: [thMap]),
  MvP(
      id: 3220,
      name: 'Sicário Eremes',
      level: 189,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.poison,
      hp: 12600000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3220.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 75,
          earth: 75,
          fire: 75,
          wind: 75,
          poison: 0,
          holy: 125,
          dark: -25,
          ghost: 25,
          undead: -25),
      spawnMaps: [thMap]),
  MvP(
      id: 3222,
      name: 'Sentinela Cecil',
      level: 189,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.wind,
      hp: 12600000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3222.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 60,
          earth: 200,
          fire: 100,
          wind: -50,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
  MvP(
      id: 3225,
      name: 'Cavaleiro Rúnico Seyren',
      level: 189,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 14400000,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3225.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 60,
          fire: -50,
          wind: 100,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [thMap]),
];

List<MvP> inMvPs = [];

List<MvP> owMvPs = [
  MvP(
      id: 3505,
      name: 'Gemaring',
      level: 25,
      race: Races.plant,
      size: MvPSizes.medium,
      element: Elements.earth,
      hp: 142480,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3505.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: -25,
          fire: 200,
          wind: 70,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Ninho do Dragão',
            mapId: 'lasa_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/lasa_dun01',
            respawn: 60)
      ]),
  MvP(
      id: 1087,
      name: 'Orc Herói',
      level: 50,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 362000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1087.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 0,
          fire: 175,
          wind: 80,
          poison: 125,
          holy: 100,
          dark: 100,
          ghost: 75,
          undead: 75),
      spawnMaps: [
        SpawnMap(
            name: 'Arredores de Geffen (3)',
            mapId: 'gef_fild03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gef_fild03',
            respawn: 60)
      ]),
  MvP(
      id: 1147,
      name: 'Maya',
      level: 55,
      race: Races.insect,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 380000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1147.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: -50,
          fire: 200,
          wind: 60,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Formigueiro Infernal (2)',
            mapId: 'anthell02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/anthell02',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'gld_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun03',
            respawn: 480),
        SpawnMap(
            name: 'Calabouço de Luina (1)',
            mapId: 'gld_dun02_2',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun02_2',
            respawn: 480),
      ]),
  MvP(
      id: 1190,
      name: 'Senhor dos Orcs',
      level: 55,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 552000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1190.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: -50,
          fire: 200,
          wind: 60,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Arredores de Geffen (10)',
            mapId: 'gef_fild10',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gef_fild10',
            respawn: 60)
      ]),
  MvP(
      id: 1086,
      name: 'Besouro-Ladrão Dourado',
      level: 65,
      race: Races.insect,
      size: MvPSizes.large,
      element: Elements.fire,
      hp: 222750,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1086.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 175,
          earth: 90,
          fire: 0,
          wind: 100,
          poison: 125,
          holy: 100,
          dark: 100,
          ghost: 75,
          undead: 75),
      spawnMaps: [
        SpawnMap(
            name: 'Esgotos de Prontera (4)',
            mapId: 'prt_sewb4',
            mapUrl: 'https://www.divine-pride.net/img/map/original/prt_sewb4',
            respawn: 60)
      ]),
  MvP(
      id: 1115,
      name: 'Eddga',
      level: 65,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.fire,
      hp: 947500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1115.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 150,
          earth: 90,
          fire: 25,
          wind: 100,
          poison: 125,
          holy: 100,
          dark: 100,
          ghost: 100,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Floresta de Payon (10)',
            mapId: 'pay_fild10',
            mapUrl: 'https://www.divine-pride.net/img/map/original/pay_fild10',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun01',
            respawn: 480),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01_2',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun01_2',
            respawn: 480),
      ]),
  MvP(
      id: 1038,
      name: 'Osíris',
      level: 68,
      race: Races.undead,
      size: MvPSizes.medium,
      element: Elements.dark,
      hp: 1175840,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1038.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 150,
          earth: 50,
          fire: 200,
          wind: 100,
          poison: -100,
          holy: 200,
          dark: -100,
          ghost: 175,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Pirâmide (4)',
            mapId: 'moc_pryd04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/moc_pryd04',
            respawn: 60)
      ]),
  MvP(
      id: 1511,
      name: 'Amon Ra',
      level: 69,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 1009000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1511.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: -25,
          fire: 200,
          wind: 70,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Subsolo da Pirâmide (2)',
            mapId: 'moc_pryd06',
            mapUrl: 'https://www.divine-pride.net/img/map/original/moc_pryd06',
            respawn: 60)
      ]),
  MvP(
      id: 1159,
      name: 'Freeoni',
      level: 71,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.neutral,
      hp: 300000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1159.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 0,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Deserto de Sograt (17)',
            mapId: 'moc_fild17',
            mapUrl: 'https://www.divine-pride.net/img/map/original/moc_fild17',
            respawn: 60)
      ]),
  MvP(
      id: 1389,
      name: 'Drácula',
      level: 75,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 350000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1389.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 25,
          earth: 25,
          fire: 25,
          wind: 25,
          poison: -25,
          holy: 200,
          dark: -100,
          ghost: 0,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço de Geffen (1)',
            mapId: 'gef_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gef_dun01',
            respawn: 60)
      ]),
  MvP(
      id: 1046,
      name: 'Doppelganger',
      level: 77,
      race: Races.demon,
      size: MvPSizes.medium,
      element: Elements.dark,
      hp: 380000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1046.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço de Geffen (2)',
            mapId: 'gef_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gef_dun02',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço de Luina (1)',
            mapId: 'gld_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun02',
            respawn: 480),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)',
            mapId: 'gld_dun04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun04',
            respawn: 480),
      ]),
  MvP(
      id: 1059,
      name: 'Abelha-Rainha',
      level: 78,
      race: Races.insect,
      size: MvPSizes.small,
      element: Elements.wind,
      hp: 378000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1059.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 60,
          earth: 200,
          fire: 100,
          wind: -50,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Monte Mjolnir (4)',
            mapId: 'mjolnir_04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/mjolnir_04',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço de Luina (1)',
            mapId: 'gld_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun02',
            respawn: 480)
      ]),
  MvP(
      id: 1150,
      name: 'Flor do Luar',
      level: 79,
      race: Races.demon,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 324000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1150.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 70,
          fire: -25,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Caverna de Payon (4)',
            mapId: 'pay_dun04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/pay_dun04',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun01',
            respawn: 480)
      ]),
  MvP(
      id: 1688,
      name: 'Lady Tanee',
      level: 80,
      race: Races.plant,
      size: MvPSizes.large,
      element: Elements.wind,
      hp: 360000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1688.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 70,
          earth: 200,
          fire: 100,
          wind: -25,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Santuário Ancestral',
            mapId: 'ayo_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ayo_dun02',
            respawn: 420)
      ]),
  MvP(
      id: 1039,
      name: 'Bafomé',
      level: 81,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 668000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1039.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Labirinto da Floresta (3)',
            mapId: 'prt_maze03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/prt_maze03',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'gld_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun03',
            respawn: 480),
      ]),
  MvP(
      id: 1157,
      name: 'Faraó',
      level: 85,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 900000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1157.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Esfinge (5)',
            mapId: 'in_sphinx5',
            mapUrl: 'https://www.divine-pride.net/img/map/original/in_sphinx5',
            respawn: 60),
      ]),
  MvP(
      id: 1980,
      name: 'Kublin',
      level: 85,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.earth,
      hp: 633600,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1157.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 25,
          fire: 150,
          wind: 90,
          poison: 125,
          holy: 100,
          dark: 100,
          ghost: 100,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço de Nithafjoll',
            mapId: 'schg_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/schg_dun01',
            respawn: 0),
        SpawnMap(
            name: 'Calabouço de Valfreyja',
            mapId: 'arug_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/arug_dun01',
            respawn: 0)
      ]),
  MvP(
      id: 1112,
      name: 'Drake',
      level: 91,
      race: Races.undead,
      size: MvPSizes.medium,
      element: Elements.undead,
      hp: 804500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1112.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 100,
          fire: 125,
          wind: 100,
          poison: -25,
          holy: 150,
          dark: -25,
          ghost: 100,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Navio Fantasma (2)',
            mapId: 'treasure02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/treasure02',
            respawn: 60),
      ]),
  MvP(
      id: 1251,
      name: 'Cavaleiro da Tempestade',
      level: 92,
      race: Races.formless,
      size: MvPSizes.large,
      element: Elements.wind,
      hp: 630500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1251.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 60,
          earth: 200,
          fire: 100,
          wind: -50,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Fábrica de Brinquedos (2)',
            mapId: 'xmas_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/xmas_dun02',
            respawn: 67),
      ]),
  MvP(
      id: 2068,
      name: 'Boitatá',
      level: 93,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.fire,
      hp: 1283990,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/2068.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 70,
          fire: -25,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Profundezas das Cataratas',
            mapId: 'bra_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/bra_dun02',
            respawn: 120),
      ]),
  MvP(
      id: 2156,
      name: 'Leak',
      level: 94,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 1266000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/2156.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 75,
          earth: 75,
          fire: 75,
          wind: 75,
          poison: 25,
          holy: 150,
          dark: -25,
          ghost: 50,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Vulcão Krakatau',
            mapId: 'dew_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/dew_dun01',
            respawn: 60),
      ]),
  MvP(
      id: 1373,
      name: 'Senhor dos Mortos',
      level: 94,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 1266000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1373.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Nifflheim',
            mapId: 'niflheim',
            mapUrl: 'https://www.divine-pride.net/img/map/original/niflheim',
            respawn: 133),
      ]),
  MvP(
      id: 1272,
      name: 'Senhor das Trevas',
      level: 96,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.undead,
      hp: 1190900,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1272.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 150,
          earth: 50,
          fire: 200,
          wind: 100,
          poison: -100,
          holy: 200,
          dark: -100,
          ghost: 175,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Cemitério de Glast Heim',
            mapId: 'gl_chyard',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gl_chyard',
            respawn: 60),
        SpawnMap(
            name: 'Cemitério de Glast Heim',
            mapId: 'gl_chyard_',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gl_chyard_',
            respawn: 60),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)',
            mapId: 'gld_dun04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun04',
            respawn: 480),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)',
            mapId: 'gld_dun04_2',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun04_2',
            respawn: 480),
      ]),
  MvP(
      id: 1885,
      name: 'Gorynych',
      level: 97,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 1120500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1885.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: -25,
          fire: 200,
          wind: 70,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Floresta Encantada (3)',
            mapId: 'mosk_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/mosk_dun03',
            respawn: 60),
      ]),
  MvP(
      id: 1630,
      name: 'Lady Branca',
      level: 97,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.wind,
      hp: 720500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1630.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 70,
          earth: 200,
          fire: 100,
          wind: -25,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Suei Long Gon',
            mapId: 'lou_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/lou_dun03',
            respawn: 116),
      ]),
  MvP(
      id: 1252,
      name: 'Hatii',
      level: 98,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.water,
      hp: 1275500,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1252.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: -50,
          earth: 100,
          fire: 60,
          wind: 200,
          poison: 25,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Arredores de Lutie',
            mapId: 'xmas_fild01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/xmas_fild01',
            respawn: 60),
      ]),
  MvP(
      id: 1779,
      name: 'Ktullanux',
      level: 98,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.water,
      hp: 2626000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1779.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: -50,
          earth: 100,
          fire: 60,
          wind: 200,
          poison: 25,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Caverna de Gelo (3)',
            mapId: 'ice_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ice_dun03',
            respawn: 60),
      ]),
  MvP(
      id: 1708,
      name: 'Memória de Thanatos',
      level: 99,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.ghost,
      hp: 1445660,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1708.gif',
      elementsDamage: ElementsDamage(
          neutral: 0,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 25,
          holy: 100,
          dark: 100,
          ghost: 200,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Topo da Torre de Thanatos',
            mapId: 'thana_boss',
            mapUrl: 'https://www.divine-pride.net/img/map/original/thana_boss',
            respawn: 60),
      ]),
  MvP(
      id: 2442,
      name: 'Superaprendiz',
      level: 99,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 268800,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/2442.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 60,
          fire: -50,
          wind: 100,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço de Luina (1)',
            mapId: 'teg_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/teg_dun02',
            respawn: 180),
      ]),
  MvP(
      id: 2441,
      name: 'Aprendiz',
      level: 99,
      race: Races.human,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 265203,
      greenAura: false,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/2441.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 60,
          fire: -50,
          wind: 100,
          poison: 75,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'teg_dun01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/teg_dun01',
            respawn: 180),
      ]),
  MvP(
      id: 1623,
      name: 'RSX-0806',
      level: 100,
      race: Races.formless,
      size: MvPSizes.large,
      element: Elements.neutral,
      hp: 1001000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1623.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 0,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Calabouço da Mina (2)',
            mapId: 'ein_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ein_dun02',
            respawn: 125),
      ]),
  MvP(
      id: 1492,
      name: 'Samurai Encarnado',
      level: 100,
      race: Races.human,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 901000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1492.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Templo Subterrâneo',
            mapId: 'ama_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ama_dun03',
            respawn: 91),
      ]),
  MvP(
      id: 1418,
      name: 'Serpente Suprema',
      level: 105,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.ghost,
      hp: 1101000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1418.gif',
      elementsDamage: ElementsDamage(
          neutral: 0,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 50,
          holy: 100,
          dark: 100,
          ghost: 175,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Terra das Fadas',
            mapId: 'gon_dun03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gon_dun03',
            respawn: 94),
      ]),
  MvP(
      id: 1583,
      name: 'Tao Gunka',
      level: 110,
      race: Races.demon,
      size: MvPSizes.large,
      element: Elements.neutral,
      hp: 1252000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1583.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 100,
          fire: 100,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 0,
          undead: 100),
      spawnMaps: [
        SpawnMap(
            name: 'Karu, a Caverna do Oeste',
            mapId: 'beach_dun',
            mapUrl: 'https://www.divine-pride.net/img/map/original/beach_dun',
            respawn: 300),
      ]),
  MvP(
      id: 1312,
      name: 'General Tartaruga',
      level: 110,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.earth,
      hp: 1442000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1312.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 100,
          earth: 0,
          fire: 175,
          wind: 80,
          poison: 125,
          holy: 100,
          dark: 100,
          ghost: 75,
          undead: 75),
      spawnMaps: [
        SpawnMap(
            name: 'Palácio Tartaruga',
            mapId: 'tur_dun04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/tur_dun04',
            respawn: 60),
      ]),
  MvP(
      id: 3633,
      name: 'Quimera Venenosa',
      level: 110,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.poison,
      hp: 2800000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3633.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 75,
          earth: 75,
          fire: 75,
          wind: 75,
          poison: 0,
          holy: 125,
          dark: -25,
          ghost: 25,
          undead: -25),
      spawnMaps: [
        SpawnMap(
            name: 'Laboratório Werner',
            mapId: 'slabw01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/slabw01',
            respawn: 60)
      ]),
  MvP(
      id: 1785,
      name: 'Atroce',
      level: 113,
      race: Races.brute,
      size: MvPSizes.large,
      element: Elements.dark,
      hp: 1502000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1785.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 50,
          earth: 50,
          fire: 50,
          wind: 50,
          poison: 0,
          holy: 175,
          dark: -50,
          ghost: 25,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Planície de Ida',
            mapId: 'ra_fild03',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ra_fild03',
            respawn: 180),
        SpawnMap(
            name: 'Pradaria Audhumbla',
            mapId: 'ra_fild04',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ra_fild04',
            respawn: 300),
        SpawnMap(
            name: 'Arredores de Veins (1)',
            mapId: 've_fild01',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ve_fild01',
            respawn: 180),
        SpawnMap(
            name: 'Arredores de Veins (2)',
            mapId: 've_fild02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/ve_fild02',
            respawn: 360),
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'gld_dun03_2',
            mapUrl: 'https://www.divine-pride.net/img/map/original/gld_dun03_2',
            respawn: 480)
      ]),
  MvP(
      id: 3758,
      name: 'Ilusão do Luar',
      level: 118,
      race: Races.demon,
      size: MvPSizes.medium,
      element: Elements.fire,
      hp: 4287803,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/3758.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 200,
          earth: 70,
          fire: -25,
          wind: 100,
          poison: 100,
          holy: 100,
          dark: 100,
          ghost: 50,
          undead: 50),
      spawnMaps: [
        SpawnMap(
            name: 'Ilusão da Lua',
            mapId: 'pay_d03_i',
            mapUrl: 'https://www.divine-pride.net/img/map/original/pay_d03_i',
            respawn: 0)
      ]),
  MvP(
      id: 2202,
      name: 'Kraken',
      level: 124,
      race: Races.fish,
      size: MvPSizes.large,
      element: Elements.water,
      hp: 5602800,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/2202.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: -50,
          earth: 100,
          fire: 60,
          wind: 200,
          poison: 25,
          holy: 75,
          dark: 75,
          ghost: 25,
          undead: 25),
      spawnMaps: [
        SpawnMap(
            name: 'Túnel Submarino (5)',
            mapId: 'iz_dun05',
            mapUrl: 'https://www.divine-pride.net/img/map/original/iz_dun05',
            respawn: 140)
      ]),
  MvP(
      id: 1734,
      name: 'Kiel-D-01',
      level: 125,
      race: Races.formless,
      size: MvPSizes.medium,
      element: Elements.dark,
      hp: 2502000,
      greenAura: true,
      gifUrl: 'https://static.ragnaplace.com/db/npc/gif/1734.gif',
      elementsDamage: ElementsDamage(
          neutral: 100,
          water: 75,
          earth: 75,
          fire: 75,
          wind: 75,
          poison: 25,
          holy: 150,
          dark: -25,
          ghost: 50,
          undead: 0),
      spawnMaps: [
        SpawnMap(
            name: 'Fábrica de Robôs (2)',
            mapId: 'kh_dun02',
            mapUrl: 'https://www.divine-pride.net/img/map/original/kh_dun02',
            respawn: 120)
      ])
];
