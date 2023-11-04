import 'package:first_app/tab_bar/tab_bar_pages/call_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/chat_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/status_page.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat),
                    SizedBox(width: 5),
                    Text('Chats')
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.update),
                    SizedBox(width: 5),
                    Text('Status')
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 5),
                    Text('Calls')
                  ],
                ),
              ),
            ],
          ),
        ),
        body:
            const TabBarView(children: [ChatPage(), StatusPage(), CallPage()]),
      ),
    );
  }
}
