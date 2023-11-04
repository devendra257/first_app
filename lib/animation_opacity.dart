import 'dart:math';

import 'package:flutter/material.dart';

class AnimationOpacity extends StatefulWidget {
  const AnimationOpacity({super.key});

  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {
  var mOpacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Opacity",
        ),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: mOpacity,
          child: InkWell(
            onTap: () {
              mOpacity = Random().nextInt(11) / 10;
              // mOpacity = mOpacity == 0.0 ? 1.0 : 0.5;
              setState(() {});
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
