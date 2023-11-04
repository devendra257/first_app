import 'package:flutter/material.dart';

class AppBarPage2 extends StatefulWidget {
  const AppBarPage2({super.key});

  @override
  State<AppBarPage2> createState() => _AppBarPage2State();
}

class _AppBarPage2State extends State<AppBarPage2> {
  List<Map<String, dynamic>> listPopUpItem = [
    {
      'title': 'Contact',
      'icon': Icons.phone,
    },
    {
      'title': 'Profile',
      'icon': Icons.account_circle_outlined,
    },
    {
      'title': 'About US',
      'icon': Icons.info,
    },
    {
      'title': 'Setting',
      'icon': Icons.settings,
    },
    {
      'title': 'Log Out',
      'icon': Icons.logout,
    }
  ];

  String initialOnSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: false,
              pinned: true,
              snap: false,
              title: const Text('home'),
              expandedHeight: 200,
              flexibleSpace: Container(
                color: Colors.amber.shade500,
              ),
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.nightlight)),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(51),
                ),
              ),
              elevation: 11,
              shadowColor: Colors.grey,
              // //* For the top include to show any thing
              // flexibleSpace: Container(
              //   height: 200,
              //   color: Colors.white,
              //   child: const Text('App Bar'),
              // ),

              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.face)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                PopupMenuButton(
                    initialValue: initialOnSelected,
                    onSelected: (value) {
                      initialOnSelected = value.toString();
                      setState(() {});
                    },
                    itemBuilder: (_) {
                      return listPopUpItem
                          .map(
                            (e) => PopupMenuItem(
                              value: e['title'],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    e['icon'],
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Text(e['title']),
                                ],
                              ),
                            ),
                          )
                          .toList();
                      // [

                      // PopupMenuItem(
                      //     child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Icon(
                      //       Icons.account_circle,
                      //       color: Colors.black,
                      //     ),
                      //     Text('Profile'),
                      //   ],
                      // )),
                      // ];
                    })
              ]),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return Column(
                  children: [
                    const ListTile(title: Text('Devendra')),
                    Container(
                      height: 30,
                      color: Colors.amber.shade200,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
