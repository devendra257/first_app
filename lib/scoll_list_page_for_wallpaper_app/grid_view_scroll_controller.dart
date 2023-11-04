import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ScrollControllerUsingGridView extends StatefulWidget {
  const ScrollControllerUsingGridView({super.key});

  @override
  State<ScrollControllerUsingGridView> createState() =>
      _ScrollControllerUsingGridViewState();
}

class _ScrollControllerUsingGridViewState
    extends State<ScrollControllerUsingGridView> {
  late ScrollController mController;

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
  void initState() {
    super.initState();

    mController = ScrollController();

    mController.addListener(
      () {
        print(mController.offset);

        if (mController.position.pixels ==
            mController.position.maxScrollExtent) {
          print('End Of List');

          Timer(
            Duration(seconds: 2),
            () {
              for (var i = 0; i < 10; i++) {
                listColor.add(Colors
                    .primaries[Random().nextInt(Colors.primaries.length - 1)]);
              }
              setState(() {});
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View With Controller'),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            print('Scroll Started !!');
          } else if (notification is ScrollUpdateNotification) {
            print('Scrolling');
          } else if (notification is ScrollEndNotification) {
            print('Scroll Ended!!');
          }

          return false;
        },
        child: GridView.builder(
          itemCount: listColor.length,
          controller: mController,
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
    );
  }
}
