import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';

class ElementsDamageTable extends StatelessWidget {
  final MvP mvp;
  const ElementsDamageTable({Key? key, required this.mvp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(4),
        1: FlexColumnWidth(2),
      },
      children: [
        TableRow(decoration: BoxDecoration(color: neutralColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.neutral.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.neutral.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: waterColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.water.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.water.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: earthColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.earth.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.earth.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: fireColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.fire.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.fire.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: windColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.wind.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.wind.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: poisonColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.poison.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.poison.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: holyColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.holy.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.holy.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: darkColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.dark.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.dark.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: ghostColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.ghost.name,
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.ghost.toString()}%',
              style: TextStyle(color: darker, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
        TableRow(decoration: BoxDecoration(color: undeadColor), children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              Elements.undead.name,
              style: TextStyle(color: light, fontSize: 18, letterSpacing: 1.3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '${mvp.elementsDamage.undead.toString()}%',
              style: TextStyle(color: light, fontSize: 18, letterSpacing: 1.3),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
      ],
    );
  }
}
