import 'dart:math';

import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimationContainer();
  }
}

class _AnimationContainer extends State<AnimationContainer> {
  double mWidth = 100;
  double mHeight = 100;

  Color mColor = Colors.blue;

  var mRadius = 0.0;

  List listColor = [
    Colors.amber,
    Colors.redAccent,
    Colors.green[400],
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.lightBlue,
    Colors.cyan,
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //   Duration(seconds: 7),
    //   () {
    //     mWidth = 500;
    //     mHeight = 500;
    //     setState(() {});
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: InkWell(
        onTap: () {
          double random = Random().nextInt(500).toDouble();
          mWidth = random;
          mHeight = random;

          mColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          mRadius = Random().nextInt(50).toDouble();

          // mColor = listColor[Random().nextInt(listColor.length)];

          // Timer(
          //   Duration(seconds: 7),
          //   () {
          //     mWidth = 100;
          //     mHeight = 100;
          //     setState(() {});
          //   },
          // );
          setState(
              () {}); //* update the state to trigger animation again with new values of size and color etc
        },
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 4),
            width: mWidth,
            height: mHeight,
            decoration: BoxDecoration(
              color: mColor,
              borderRadius: BorderRadius.circular(mRadius),
            ),
          ),
        ),
      ),
    );
  }
}
