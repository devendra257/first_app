import 'package:flutter/material.dart';

class ListViewBuilderUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewBuilderUiState();
  }
}

class ListViewBuilderUiState extends State<ListViewBuilderUi> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder UI'),
      ),
      body: ListView.builder(
        itemCount: listColors.length,
        itemBuilder: (context, index) {
          if (index == 0) {
          } else {}
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            color: listColors[index]['color'],
            child: Center(
                child: Text(
              listColors[index]['name'],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
          );
        },
      ),
    );
  }
}
