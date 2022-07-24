import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/bubbles/bubble_effect.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/sliver_appbar/search_options.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri browikiUrl = Uri.parse('https://browiki.org');

class MvPsSliverAppbar extends StatefulWidget {
  var contentController;
  MvPsSliverAppbar({Key? key, required this.contentController})
      : super(key: key);

  @override
  State<MvPsSliverAppbar> createState() => _MvPsSliverAppbarState();
}

class _MvPsSliverAppbarState extends State<MvPsSliverAppbar> {
  @override
  FocusNode searchBarFocus = FocusNode();
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
      expandedHeight: 160,
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
            SearchOptions(contentController: widget.contentController),
          ],
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('MvPlus+', style: TextStyle(color: light, fontSize: 26)),
          SizedBox(
            width: 500,
            height: 50,
            child: TextField(
//              onTap: () => Focus.of(context).requestFocus(searchBarFocus),
              focusNode: searchBarFocus,
              cursorColor: light,
              style: TextStyle(fontSize: 18, color: light),
              controller: widget.contentController.searchTextController,
              onChanged: (text) {
                widget.contentController.applyFilter(
                    text: widget.contentController.searchTextController.text
                        .toLowerCase());
              },
              decoration: InputDecoration(
                  labelText: 'Busque um MvP',
                  labelStyle: TextStyle(
                      fontSize: 14, color: light, fontWeight: FontWeight.w100),
                  alignLabelWithHint: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: light, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: light, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: Icon(
                      searchBarFocus.hasFocus ? Icons.close : Icons.search,
                      color: light,
                      size: 20)),
            ),
          ),
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
                      'assets/BrowikiLogoBlue.png',
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
                onTap: () {},
                radius: 20,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BrowikiLogoBlue.png',
                      fit: BoxFit.contain,
                      width: 50,
                    ),
                    const CustomText(
                      text: 'Patch Notes',
                      size: 10,
                      tAlign: TextAlign.center,
                    )
                  ],
                )),
          ),
          SizedBox(
            width: _size.width * 0.07,
            child: InkWell(
                onTap: () {},
                radius: 20,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BrowikiLogoBlue.png',
                      fit: BoxFit.contain,
                      width: 50,
                    ),
                    const CustomText(
                      text: 'Doar ;D',
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
