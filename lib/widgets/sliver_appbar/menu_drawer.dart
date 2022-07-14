import 'package:flutter/material.dart';
import 'package:mvp_timer/routing/routes.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [...pageItems.map((e) => Text(e.name))],
      ),
    );
  }
}
