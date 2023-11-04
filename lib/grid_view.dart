import 'package:flutter/material.dart';

class GridViewUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridViewUIState();
  }
}

class GridViewUIState extends State<GridViewUI> {
  var listGrid = [
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
          title: const Text('Grid View'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 11, //* vartical spacing
              crossAxisSpacing: 11, //* Horizontal spacing
              childAspectRatio: 9 / 16, //*Ratio of accoding width to height
            ),
            itemCount: listGrid.length,
            itemBuilder: (context, index) {
              return Container(
                color: listGrid[index]['color'] as Color,
                child: Center(
                  child: Text(
                    listGrid[index]['name'].toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        )

        // GridView.extent(
        //   maxCrossAxisExtent: 100, //* width area define to
        //   mainAxisSpacing: 11, //* vartical spacing
        //   crossAxisSpacing: 11, //* Horizontal spacing
        //   childAspectRatio: 9 / 16, //*Ratio of accoding width to height
        //   children: listGrid
        //       .map(
        //         (element) => InkWell(
        //           onTap: () {
        //             if (element['color'] == Colors.blue) {
        //               //! Condition to tap on color only...
        //               print('tapped on ${element.toString()}');
        //             }
        //           },
        //           child: Container(
        //             color: element['color'] as Color,
        //             child: Center(
        //               child: Text(
        //                 element['name'].toString(),
        //                 style:
        //                     TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //         ),
        //       )
        //       .toList(),
        // ),

        // GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 11, //* vartical spacing
        //   crossAxisSpacing: 11, //* Horizontal spacing
        //   childAspectRatio: 9 / 16, //*Ratio of accoding width to height
        //   children: listGrid
        //       .map(
        //         (element) => Container(
        //           color: element['color'] as Color,
        //           child: Center(
        //             child: Text(
        //               element['name'].toString(),
        //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //         ),
        //       )
        //       .toList(),
        // ),
        );
  }
}
