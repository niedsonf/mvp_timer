import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/widgets/mvp_showcase/action_button_showcase.dart';
import 'package:mvp_timer/widgets/mvp_showcase/showcase_link_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SpawnmapsTable extends StatelessWidget {
  final MvP mvp;
  const SpawnmapsTable({Key? key, required this.mvp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Table(
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(2),
      },
      border: TableBorder.all(color: darker),
      children: [
        TableRow(decoration: BoxDecoration(color: neutralColor), children: [
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(8),
              child: Text(
                  mvp.spawnMaps.first.mapId != 'Instância' ? 'Mapa' : 'Link',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(8),
              child: Text('Nome',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(8),
              child: Text('ID',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
          Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(8),
              child: Text(
                  mvp.spawnMaps.first.mapId != 'Instância'
                      ? 'Respawn'
                      : 'Cooldown',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darker, fontSize: 16))),
        ]),
        ...mvp.spawnMaps.map((e) =>
            TableRow(decoration: BoxDecoration(color: neutralColor), children: [
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(8),
                  child: mvp.spawnMaps.first.mapId != 'Instância'
                      ? Image.network(
                          e.mapUrl,
                          width: 100,
                          height: 100,
                        )
                      : ShowcaseLinkButton(
                          onTap: () {
                            final Uri url =
                                Uri.parse(mvp.spawnMaps.first.mapUrl);
                            launchUrl(url);
                          },
                          color: blue,
                          icon: Icons.search_off,
                          text: 'bROWiki')),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(e.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darker, fontSize: 16))),
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(e.mapId,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: darker, fontSize: 16)),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: mvp.spawnMaps.first.mapId != 'Instância',
                        child: ShowcaseLinkButton(
                            onTap: () {
                              Clipboard.setData(
                                  ClipboardData(text: '/navi ${e.mapId}'));
                              Get.snackbar('/navi copiado', 'Boa viagem! ;D',
                                  shouldIconPulse: true,
                                  maxWidth: _width * 0.5,
                                  icon: Icon(Icons.navigation),
                                  snackPosition: SnackPosition.BOTTOM,
                                  duration: const Duration(seconds: 2));
                            },
                            text: 'copiar /navi',
                            color: blue,
                            icon: Icons.navigation),
                      )
                    ],
                  )),
              Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(8),
                  child: Text(getTimeFormat(e.respawn),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darker, fontSize: 16))),
            ]))
      ],
    );
  }
}
