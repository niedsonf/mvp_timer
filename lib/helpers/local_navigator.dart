import 'package:flutter/material.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/routing/router.dart';
import 'package:mvp_timer/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: drawerMenuController.activePage.value,
      onGenerateRoute: generateRoute,
    );
