import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';

class FancyCloseButton extends StatelessWidget {
  const FancyCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: () {
        navigationController.scaffoldKey.currentState!.closeDrawer();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: red, border: Border.all(color: light, width: 2)),
        child: Icon(
          Icons.close_rounded,
          size: 30,
          color: light,
        ),
      ),
    );
  }
}
