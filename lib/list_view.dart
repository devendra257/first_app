import 'package:flutter/material.dart';

class ListViewUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewUIState();
  }
}

class ListViewUIState extends State<ListViewUI> {
  List<Map<String, dynamic>> listColors = [
    {"color": Colors.black, "name": "Accents"},
    {"color": Colors.blue, "name": "Blue"},
    {"color": Colors.blueGrey, "name": "BlueGrey"},
    {"color": Colors.yellow, "name": "Yellow"},
    {"color": Colors.red, "name": "Red"},
    {"color": Colors.orange, "name": "Orange"},
    {"color": Colors.cyan, "name": "Cyan"},
    {"color": Colors.purple, "name": "Purple"},
    {"color": Colors.deepOrange, "name": "Deep Orange"},
    {"color": Colors.green, "name": "Green"},
    {"color": Colors.indigo, "name": "Indigo"},
    {"color": Colors.lightBlue, "name": "Light blue"},
    {"color": Colors.pink, "name": "Pink"},
    {"color": Colors.teal, "name": "Teal"},
  ];

  @override
  Widget build(BuildContext context) {
    listColors.shuffle();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(
        children: listColors
            .map(
              (element) => Container(
                height: 100,
                color: element['color'],
                child: Center(
                  child: Text(
                    '${element['name']}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
