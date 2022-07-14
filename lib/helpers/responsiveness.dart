import 'package:flutter/material.dart';

const int largeScreenSize = 1200;
const int mediumScreenSize = 978;

class ResponsiveWidget extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;
  const ResponsiveWidget(
      {Key? key, required this.smallScreen, required this.largeScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      double _width = MediaQuery.of(context).size.width;
      if (_width >= mediumScreenSize) {
        return largeScreen;
      } else {
        return smallScreen;
      }
    }));
  }
}
