import 'package:flutter/material.dart';
import 'package:mvp_timer/pages/overview/overview_page.dart';
import 'package:mvp_timer/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverviewPageRoute:
      return _getPageRoute(OverviewPage());

    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget page) =>
    MaterialPageRoute(builder: ((context) => page));
