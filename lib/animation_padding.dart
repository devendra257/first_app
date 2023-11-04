import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPadding extends StatefulWidget {
  const AnimationPadding({super.key});

  @override
  State<AnimationPadding> createState() => _AnimationPaddingState();
}

class _AnimationPaddingState extends State<AnimationPadding> {
  var mPadding = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      mPadding = 50.0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding'),
      ),
      body: InkWell(
        onTap: () {
          print("Tap");
          // mPadding = mPadding == 0 ? 30 : 0;

          mPadding = Random().nextInt(100).toDouble();
          setState(() {});
        },
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.all(mPadding),
          child: Container(
            width: 100,
            height: 200,
            color: Colors.redAccent[400],
          ),
        ),
      ),
    );
  }
}
