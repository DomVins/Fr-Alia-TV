import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fraliatv/app_colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'enclosing_container_items/records.dart';
import 'enclosing_container_items/home_elements.dart';
import 'enclosing_container_items/consultant.dart';
import 'enclosing_container_items/prescription.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _screens(),
      items: _navBarItems(),
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ('Home'),
          activeColorPrimary: mainColor,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.video_camera),
          title: ('Videos'),
          activeColorPrimary: mainColor,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.news),
          title: ('News'),
          activeColorPrimary: mainColor,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.archivebox),
          title: ('Archives'),
          activeColorPrimary: mainColor,
          inactiveColorPrimary: CupertinoColors.systemGrey),
    ];
  }

  List<Widget> _screens() {
    return [_screen(0), _screen(1), _screen(2), _screen(3)];
  }

  Widget _screen(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text("Fr. Alia TV",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.0)),
                Expanded(child: Container()),
                const Icon(Icons.search),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.notifications),
                const SizedBox(
                  width: 8,
                ),
                Icon(Icons.more_vert_rounded),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
          ),
          color: Color.fromARGB(248, 219, 218, 218),
          height: 0.9,
        ),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: (index == 0)
                  ? const HomeElements()
                  : (index == 1)
                      ? const Consultant()
                      : (index == 2)
                          ? const Records()
                          : const Prescription()),
        ),
      ],
    );
  }
}
