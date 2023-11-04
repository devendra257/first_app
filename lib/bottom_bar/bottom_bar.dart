import 'package:first_app/api/api_file/photo_api.dart';
import 'package:first_app/tab_bar/tab_bar_pages/call_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/chat_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/status_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> listNavigation = [
    CallPage(),
    ChatPage(),
    StatusPage(),
    CallPage()
  ];

  int mIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listNavigation[mIndex],
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.blue.shade300,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          //* that is important
          selectedIndex: mIndex,
          onDestinationSelected: (value) {
            mIndex = value;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_max_outlined),
              label: "Home",
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
              selectedIcon: Icon(Icons.account_circle),
            ),
            NavigationDestination(
                icon: Icon(Icons.explore_rounded), label: "Explore"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
          ]),
    );
  }
}
