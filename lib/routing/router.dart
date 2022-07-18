import 'package:flutter/material.dart';
import 'package:mvp_timer/pages/favorites/favorites_page.dart';
import 'package:mvp_timer/pages/help/help_page.dart';
import 'package:mvp_timer/pages/overview/overview_page.dart';
import 'package:mvp_timer/pages/timer/timer_page.dart';
import 'package:mvp_timer/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverviewPageRoute:
      return _getPageRoute(OverviewPage());
    case FavoritePageRoute:
      return _getPageRoute(FavoritesPage());
    case TimerPageRoute:
      return _getPageRoute(TimerPage());
    case HelpPageRoute:
      return _getPageRoute(HelpPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget page) =>
    MaterialPageRoute(builder: ((context) => page));
