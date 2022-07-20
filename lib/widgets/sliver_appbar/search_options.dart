import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart' as DB;
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/sliver_appbar/search_action_button.dart';

class SearchOptions extends StatefulWidget {
  var contentController;
  SearchOptions({Key? key, required this.contentController}) : super(key: key);

  @override
  State<SearchOptions> createState() => _SearchOptionsState();
}

class _SearchOptionsState extends State<SearchOptions> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Elemento', style: TextStyle(color: light, fontSize: 14)),
              DropdownButton(
                  underline: Container(),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  dropdownColor: lightDark,
                  icon: Icon(Icons.arrow_downward, color: light),
                  value: widget.contentController.selectedElement.value,
                  items: DB.elementList
                      .map((e) => DropdownMenuItem(value: e, child: e.widget))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      widget.contentController.applyFilter(element: value);
                    });
                  }),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Raça', style: TextStyle(color: light, fontSize: 14)),
              DropdownButton(
                  underline: Container(),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  dropdownColor: lightDark,
                  icon: Icon(Icons.arrow_downward, color: light),
                  value: widget.contentController.selectedRace.value,
                  items: DB.raceList
                      .map((e) => DropdownMenuItem(value: e, child: e.widget))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      widget.contentController.applyFilter(race: value);
                    });
                  }),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tamanho', style: TextStyle(color: light, fontSize: 14)),
              DropdownButton(
                  underline: Container(),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  dropdownColor: lightDark,
                  icon: Icon(Icons.arrow_downward, color: light),
                  value: widget.contentController.selectedSize.value,
                  items: DB.sizeList
                      .map((e) => DropdownMenuItem(value: e, child: e.widget))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      widget.contentController.applyFilter(size: value);
                    });
                  }),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: SearchActionButton(
                text: 'RESETAR FILTROS',
                color: Colors.transparent,
                onTap: () {
                  widget.contentController.searchTextController.text = '';
                  widget.contentController.applyFilter(
                    text: '',
                    race: DB.Races.all,
                    element: DB.Elements.all,
                    size: DB.MvPSizes.all,
                  );
                }),
          )
        ],
      ),
    );
  }
}
