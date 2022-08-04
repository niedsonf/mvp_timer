import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/bubbles/bubble_effect.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

import 'package:mvp_timer/widgets/sliver_appbar/donate_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri browikiUrl = Uri.parse('https://browiki.org');

class DefaultAppbar extends StatefulWidget {
  DefaultAppbar({Key? key}) : super(key: key);

  @override
  State<DefaultAppbar> createState() => _DefaultAppbarState();
}

class _DefaultAppbarState extends State<DefaultAppbar> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      elevation: 3,
      forceElevated: true,
      pinned: true,
      floating: true,
      backgroundColor: darkBlue,
      automaticallyImplyLeading: false,
      toolbarHeight: 70,
      expandedHeight: 100,
      leading: Row(
        children: [
          const SizedBox(width: 5),
          IconButton(
              iconSize: 35,
              splashRadius: 25,
              onPressed: () {
                navigationController.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu_open, color: light)),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            BubblesEffect(),
          ],
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('MvPlus+ alpha', style: TextStyle(color: light, fontSize: 22)),
          SizedBox(
            width: _size.width * 0.07,
            child: InkWell(
                radius: 20,
                onTap: () {
                  launchUrl(browikiUrl);
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/lingua.gif',
                      fit: BoxFit.contain,
                      width: 50,
                    ),
                    const CustomText(
                      text: 'Ir para bROWiki',
                      size: 10,
                      tAlign: TextAlign.center,
                    )
                  ],
                )),
          ),
          SizedBox(
            width: _size.width * 0.07,
            child: InkWell(
                onTap: () {
                  showDialog(
                      context: context, builder: (context) => DonateDialog());
                },
                radius: 20,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/heart.gif',
                      fit: BoxFit.contain,
                      width: 50,
                    ),
                    const CustomText(
                      text: 'Doar <3',
                      size: 10,
                      tAlign: TextAlign.center,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
