import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/constants.dart';
import 'package:mvp_timer/widgets/sliver_appbar/search_options.dart';

class MvPsSliverAppbar extends StatefulWidget {
  MvPsSliverAppbar({Key? key}) : super(key: key);

  @override
  State<MvPsSliverAppbar> createState() => _MvPsSliverAppbarState();
}

class _MvPsSliverAppbarState extends State<MvPsSliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      pinned: true,
      floating: true,
      backgroundColor: lightDark,
      automaticallyImplyLeading: false,
      toolbarHeight: 70,
      expandedHeight: 180,
      leading: Row(
        children: [
          SizedBox(width: 5),
          IconButton(
              iconSize: 35,
              splashRadius: 25,
              onPressed: () {
                navigationController.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu_open, color: light)),
        ],
      ),
      flexibleSpace: const FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: SearchOptions(),
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
              cursorColor: light,
              style: TextStyle(fontSize: 18, color: light),
              controller: searchController.searchTextController,
              onChanged: (text) {
                searchController.applyFilter(
                    text: searchController.searchTextController.text
                        .toLowerCase());
              },
              decoration: InputDecoration(
                  labelText: 'Busque um MvP',
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: light,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w100),
                  alignLabelWithHint: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: darker, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: darker, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: Icon(Icons.search, color: light, size: 20)),
            ),
          )
        ],
      ),
    );
  }
}
