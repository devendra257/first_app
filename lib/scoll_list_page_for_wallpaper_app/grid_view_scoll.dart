import 'dart:math';

import 'package:flutter/material.dart';

class GridViewScollPage extends StatefulWidget {
  const GridViewScollPage({super.key});

  @override
  State<GridViewScollPage> createState() => _GridViewScollPageState();
}

class _GridViewScollPageState extends State<GridViewScollPage> {
  List<Color> listColor = [
    Colors.black,
    Colors.indigo,
    Colors.amber,
    Colors.lightBlue,
    Colors.pink,
    Colors.lightBlueAccent,
    Colors.amberAccent,
    Colors.red,
    Colors.redAccent,
    Colors.cyanAccent,
    Colors.teal,
    Colors.tealAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Scoll Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            print(notification.metrics.pixels);

            if (notification.metrics.pixels ==
                notification.metrics.maxScrollExtent) {
              print('End of List');

              listColor.add(Colors.red);
              listColor.add(Colors.red);
              listColor.add(Colors.red);
              listColor.add(Colors.red);

              setState(() {});
            }

//* Jab Aage ya upar me hum Scroll Event use kar rahe h to uska b use karna h to iska return true hona chahiye other wise false;
            return true;
          },
          child: GridView.builder(
            itemCount: listColor.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 9 / 16,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width / 2,
                color: listColor[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
