import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/routing/routes.dart';
import 'package:mvp_timer/widgets/close_button.dart';

import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/menu_drawer_item.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Drawer(
        width: _width / 3,
        backgroundColor: darker,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'MvPlus+', size: 30),
                  FancyCloseButton()
                ],
              ),
              const SizedBox(height: 10),
              Divider(color: light, height: 2, indent: 30, endIndent: 30),
              const SizedBox(height: 30),
              ...pageItems.map((e) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: MenuDrawerItem(name: e.name, route: e.route)))
            ],
          ),
        ));
  }
}
