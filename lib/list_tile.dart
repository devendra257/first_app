import 'package:flutter/material.dart';

class ListTileUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListTileUiState();
  }
}

class ListTileUiState extends State<ListTileUi> {
  List<Map<String, dynamic>> listTile = [
    {
      'name': 'Raman Kumar',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Hello!! Where r u from ?'
    },
    {
      'name': 'Rajkumar',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Hello!! What r u doing Bro?'
    },
    {
      'name': 'Akash',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Hiiiii.....'
    },
    {
      'name': 'Chaman',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'How r u bro ?'
    },
    {
      'name': 'Tarachand',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Yeh....'
    },
    {
      'name': 'Jatin',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Hello!!'
    },
    {
      'name': 'Rajeev Kumar',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'This is a good boy..'
    },
    {
      'name': 'Rahul',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Rahul is excellent boy'
    },
    {
      'name': 'Mahendra',
      'img_name': 'assets/images/ic_profile.png',
      'subtitle': 'Hello!! Where r u from ?'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: ListView.builder(
        itemCount: listTile.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(listTile[index]["img_name"]),
            title: Text(
              '${listTile[index]['name']}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${listTile[index]['subtitle']}',
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          );
        },
      ),
    );
  }
}
