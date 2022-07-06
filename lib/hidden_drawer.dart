// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hidden_drawer/pages/home_page.dart';
import 'package:hidden_drawer/pages/settings_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Home ",
            colorLineSelected: Colors.deepPurple,
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Settings ",
            baseStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple,
            selectedStyle: myTextStyle),
        const Settings(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade200,
      initPositionSelected: 0,
      slidePercent: 40,
    );
  }
}
