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
  final double respawn;
  SpawnMap({required this.name, required this.mapId, required this.respawn});
}

class MvP {
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
      {required this.name,
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

List<MvP> owMvPs = [
  MvP(
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
        SpawnMap(name: 'Ninho do Dragão', mapId: 'lasa_dun01', respawn: 1)
      ]),
  MvP(
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
            name: 'Arredores de Geffen (3)', mapId: 'gef_fild03', respawn: 1)
      ]),
  MvP(
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
            name: 'Formigueiro Infernal (2)', mapId: 'anthell02', respawn: 2),
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'gld_dun03',
            respawn: 8),
        SpawnMap(
            name: 'Calabouço de Luina (1)', mapId: 'gld_dun02_2', respawn: 8),
      ]),
  MvP(
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
            name: 'Arredores de Geffen (10)', mapId: 'gef_fild10', respawn: 2)
      ]),
  MvP(
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
            name: 'Esgotos de Prontera (4)', mapId: 'prt_sewb4', respawn: 1)
      ]),
  MvP(
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
            name: 'Floresta de Payon (10)', mapId: 'pay_fild10', respawn: 2),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01',
            respawn: 8),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01_2',
            respawn: 8),
      ]),
  MvP(
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
        SpawnMap(name: 'Pirâmide (4)', mapId: 'moc_pryd04', respawn: 1)
      ]),
  MvP(
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
            name: 'Subsolo da Pirâmide (2)', mapId: 'moc_pryd06', respawn: 1)
      ]),
  MvP(
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
            name: 'Deserto de Sograt (17)', mapId: 'moc_fild17', respawn: 2)
      ]),
  MvP(
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
            name: 'Calabouço de Geffen (1)', mapId: 'gef_dun01', respawn: 1)
      ]),
  MvP(
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
            name: 'Calabouço de Geffen (2)', mapId: 'gef_dun02', respawn: 2),
        SpawnMap(
            name: 'Calabouço de Luina (1)', mapId: 'gld_dun02', respawn: 8),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)', mapId: 'gld_dun04', respawn: 8),
      ]),
  MvP(
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
        SpawnMap(name: 'Monte Mjolnir (4)', mapId: 'mjolnir_04', respawn: 2),
        SpawnMap(name: 'Calabouço de Luina (1)', mapId: 'gld_dun02', respawn: 8)
      ]),
  MvP(
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
        SpawnMap(name: 'Caverna de Payon (4)', mapId: 'pay_dun04', respawn: 1),
        SpawnMap(
            name: 'Calabouço do Bosque Celestial (1)',
            mapId: 'gld_dun01',
            respawn: 8)
      ]),
  MvP(
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
        SpawnMap(name: 'Santuário Ancestral', mapId: 'ayo_dun02', respawn: 7)
      ]),
  MvP(
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
            name: 'Labirinto da Floresta (3)', mapId: 'prt_maze03', respawn: 2),
        SpawnMap(
            name: 'Calabouço das Valquírias (1)',
            mapId: 'gld_dun03',
            respawn: 8),
      ]),
  MvP(
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
        SpawnMap(name: 'Esfinge (5)', mapId: 'in_sphinx5', respawn: 1),
      ]),
  MvP(
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
        SpawnMap(name: 'Navio Fantasma (2)', mapId: 'treasure02', respawn: 2),
      ]),
  MvP(
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
            respawn: 1.117),
      ]),
  MvP(
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
            respawn: 1.117),
      ]),
  MvP(
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
        SpawnMap(name: 'Vulcão Krakatau', mapId: 'dew_dun01', respawn: 2),
      ]),
  MvP(
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
        SpawnMap(name: 'Nifflheim', mapId: 'niflheim', respawn: 2.217),
      ]),
  MvP(
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
            name: 'Cemitério de Glast Heim', mapId: 'gl_chyard', respawn: 1),
        SpawnMap(
            name: 'Cemitério de Glast Heim', mapId: 'gl_chyard_', respawn: 1),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)', mapId: 'gld_dun04', respawn: 8),
        SpawnMap(
            name: 'Calabouço de Britoniah (1)',
            mapId: 'gld_dun04_2',
            respawn: 8),
      ]),
  MvP(
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
            name: 'Floresta Encantada (3)', mapId: 'mosk_dun03', respawn: 2),
      ]),
  MvP(
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
        SpawnMap(name: 'Suei Long Gon', mapId: 'lou_dun03', respawn: 1.933),
      ]),
  MvP(
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
        SpawnMap(name: 'Arredores de Lutie', mapId: 'xmas_fild01', respawn: 2),
      ]),
  MvP(
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
        SpawnMap(name: 'Caverna de Gelo (3)', mapId: 'ice_dun03', respawn: 2),
      ]),
  MvP(
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
            name: 'Topo da Torre de Thanatos', mapId: 'thana_boss', respawn: 2),
      ]),
  MvP(
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
            name: 'Calabouço de Luina (1)', mapId: 'teg_dun02', respawn: 3),
      ]),
  MvP(
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
            respawn: 3),
      ]),
  MvP(
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
            name: 'Calabouço da Mina (2)', mapId: 'ein_dun02', respawn: 2.0833),
      ]),
  MvP(
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
            name: 'Templo Subterrâneo', mapId: 'ama_dun03', respawn: 1.516),
      ]),
  MvP(
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
        SpawnMap(name: 'Terra das Fadas', mapId: 'gon_dun03', respawn: 1.566),
      ]),
  MvP(
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
            name: 'Karu, a Caverna do Oeste', mapId: 'beach_dun', respawn: 5),
      ]),
  MvP(
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
        SpawnMap(name: 'Palácio Tartaruga', mapId: 'tur_dun04', respawn: 1),
      ]),
];
