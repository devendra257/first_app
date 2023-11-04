import 'package:first_app/tab_bar/tab_bar_pages/call_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/chat_page.dart';
import 'package:first_app/tab_bar/tab_bar_pages/status_page.dart';
import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  const TabBarControllerPage({super.key});

  @override
  State<TabBarControllerPage> createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController mTabController;
  String mTitle = 'Whatsapp';

  @override
  void initState() {
    super.initState();

    mTabController = TabController(length: 3, vsync: this);

    mTabController.addListener(
      () {
        print(mTabController.index);
        if (mTabController.index == 0) {
          mTitle = 'Chats';
        } else if (mTabController.index == 1) {
          mTitle = 'Status';
        } else {
          mTitle = 'Calls';
        }
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        bottom: TabBar(
          controller: mTabController,
          tabs: const [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.chat), SizedBox(width: 5), Text('Chats')],
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
      body: TabBarView(
          controller: mTabController,
          children: const [ChatPage(), StatusPage(), CallPage()]),
    );
  }
}
