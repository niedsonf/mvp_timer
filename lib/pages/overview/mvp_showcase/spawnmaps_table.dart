import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';

class SpawnmapsTable extends StatelessWidget {
  final MvP mvp;
  const SpawnmapsTable({Key? key, required this.mvp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(3),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1)
      },
      border: TableBorder.all(color: darker),
      children: [
        TableRow(decoration: BoxDecoration(color: neutralColor), children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Text('Mapa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: darker, fontSize: 16, letterSpacing: 1.3))),
          Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Text('ID',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: darker, fontSize: 16, letterSpacing: 1.3))),
          Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Text('Respawn',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: darker, fontSize: 16, letterSpacing: 1.3))),
        ]),
        ...mvp.spawnMaps.map((e) =>
            TableRow(decoration: BoxDecoration(color: neutralColor), children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text(e.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darker, fontSize: 16, letterSpacing: 1.3))),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text(e.mapId,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darker, fontSize: 16, letterSpacing: 1.3))),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text(e.respawn.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darker, fontSize: 16, letterSpacing: 1.3))),
            ]))
      ],
    );
  }
}
