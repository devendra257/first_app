import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
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
      appBar: AppBar(
        title: const Text('App Bar Widget'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.nightlight)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
          side: BorderSide(
            width: 2,
            color: Colors.black,
            strokeAlign: StrokeBase.thicknessInitialValue,
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

        //* For the bottom to show any thing
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Container(
            width: double.infinity,
            // height: 50,
            color: Colors.yellow.shade200,
            child: const Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
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
        ],
      ),
    );
  }
}
