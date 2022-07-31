import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class MenuDrawerItem extends StatefulWidget {
  final String name;
  final String route;
  const MenuDrawerItem({Key? key, required this.name, required this.route})
      : super(key: key);

  @override
  State<MenuDrawerItem> createState() => _MenuDrawerItemState();
}

class _MenuDrawerItemState extends State<MenuDrawerItem> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Obx(
      () => InkWell(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          if (!drawerMenuController.isActive(widget.route)) {
            drawerMenuController.activePage(widget.route);
            navigationController.navigatoTo(widget.route);
          }
          navigationController.scaffoldKey.currentState?.closeDrawer();
        },
        onHover: (value) {
          value
              ? drawerMenuController.setHover(widget.name)
              : drawerMenuController.setHover('');
        },
        child: Container(
          decoration: BoxDecoration(
              border: drawerMenuController.isActive(widget.route)
                  ? Border.all(color: light, width: 1)
                  : null),
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Column(
              children: [
                Align(
                  alignment: drawerMenuController.isActive(widget.route) ||
                          drawerMenuController.isHovering(widget.name)
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: AnimatedContainer(
                    decoration: BoxDecoration(color: lightDark),
                    curve: Curves.decelerate,
                    duration: const Duration(milliseconds: 500),
                    height: 30,
                    width: drawerMenuController.isActive(widget.route) ||
                            drawerMenuController.isHovering(widget.name)
                        ? _width / 3
                        : 0,
                  ),
                ),
                Align(
                  alignment: drawerMenuController.isActive(widget.route) ||
                          drawerMenuController.isHovering(widget.name)
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: AnimatedContainer(
                    curve: Curves.decelerate,
                    duration: const Duration(milliseconds: 500),
                    height: 30,
                    decoration: BoxDecoration(color: lightDark.withOpacity(.7)),
                    width: drawerMenuController.isActive(widget.route) ||
                            drawerMenuController.isHovering(widget.name)
                        ? _width / 3
                        : 0,
                  ),
                ),
              ],
            ),
            Row(children: [
              const SizedBox(width: 10),
              CustomText(text: widget.name, size: 24),
              Expanded(child: Container()),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: blue, shape: BoxShape.circle),
                child: drawerMenuController.returnIconFor(widget.name),
              ),
              const SizedBox(width: 10),
            ]),
          ]),
        ),
      ),
    );
  }
}
