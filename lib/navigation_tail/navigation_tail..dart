import 'package:flutter/material.dart';

class NavigationTailPage extends StatefulWidget {
  const NavigationTailPage({super.key});

  @override
  State<NavigationTailPage> createState() => _NavigationTailPageState();
}

class _NavigationTailPageState extends State<NavigationTailPage> {
  @override
  int _selectedIndex = 0;
  changeDestination(index) {
    _selectedIndex = index;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          NavigationRail(
              onDestinationSelected: changeDestination,
              leading: SizedBox(
                height: 100,
              ),
              elevation: 5,
              // labelType: NavigationRailLabelType.all,
              // selectedLabelTextStyle: TextStyle(color: Colors.blue),
              // useIndicator: true,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                    selectedIcon: Icon(Icons.home_filled)),
                NavigationRailDestination(
                    icon: Icon(Icons.account_circle),
                    label: Text('Profile'),
                    selectedIcon: Icon(Icons.account_circle_outlined)),
                NavigationRailDestination(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: Text('Fav'),
                    selectedIcon: Icon(Icons.favorite)),
              ],
              selectedIndex: _selectedIndex),
        ],
      ),
    );
  }
}
