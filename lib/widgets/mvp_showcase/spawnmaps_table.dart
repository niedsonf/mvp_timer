import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';

class SpawnmapsTable extends StatelessWidget {
  final MvP mvp;
  const SpawnmapsTable({Key? key, required this.mvp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(1),
      },
      border: TableBorder.all(color: darker),
      children: [
        TableRow(decoration: BoxDecoration(color: neutralColor), children: [
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(4),
              child: Text('Mapa',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(4),
              child: Text('Mapa',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(4),
              child: Text('ID',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(4),
              child: Text('Respawn',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
        ]),
        ...mvp.spawnMaps.map((e) =>
            TableRow(decoration: BoxDecoration(color: neutralColor), children: [
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  child: Image.network(
                    e.mapUrl,
                    width: 100,
                    height: 100,
                  )),
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  child: Text(e.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darker, fontSize: 16))),
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  child: Text(e.mapId,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darker, fontSize: 16))),
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  child: Text(getTimeFormat(e.respawn),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darker, fontSize: 16))),
            ]))
      ],
    );
  }
}
