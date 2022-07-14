import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

FloatingActionButton showcaseFloatingButton(BuildContext context) =>
    FloatingActionButton(
      onPressed: () => Navigator.pop(context),
      backgroundColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: light.withOpacity(.5)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [light.withOpacity(.3), light.withOpacity(.1)]),
                  ),
                  child:
                      Center(child: Icon(Icons.arrow_back, color: darker))))),
    );
