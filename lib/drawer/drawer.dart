import 'package:first_app/tab_bar/tab_bar_pages/call_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/chat_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/status_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Widget> listNavigationDest = [
    const ChatPage(),
    const CallPage(),
    const StatusPage(),
    const StatusPage(),
  ];
  int mIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: listNavigationDest[mIndex],
      drawer: Drawer(
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(21)),
        width: 300,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(21),
              height: 200,
              color: Colors.blue.shade200,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 11,
                    ),
                    Text('debu@gmail.com')
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      mIndex = 0;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      mIndex = 1;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('My Profile'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      mIndex = 2;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      mIndex = 3;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Sing Out'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
