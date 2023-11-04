import 'dart:math';

import 'package:flutter/material.dart';

class AnimationBuilderScale extends StatefulWidget {
  const AnimationBuilderScale({super.key});

  @override
  State<AnimationBuilderScale> createState() => _AnimationBuilderScaleState();
}

class _AnimationBuilderScaleState extends State<AnimationBuilderScale>
    with TickerProviderStateMixin {
  late AnimationController mControllerOne;
  late Animation scaleTween;

  @override
  void initState() {
    super.initState();
    mControllerOne =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..addStatusListener(
            (status) {},
          )
          ..repeat(reverse: true);

    scaleTween = Tween(begin: 1.0, end: 2.0).animate(mControllerOne);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations Builder'),
      ),
      body: InkWell(
        onTap: () {
          if (mControllerOne.isAnimating) {
            mControllerOne.stop();
          } else {
            mControllerOne.repeat();
          }
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Center(
            child: AnimatedBuilder(
              animation: mControllerOne,
              child: Icon(
                Icons.sunny,
                size: 130,
                color: Colors.orange,
              ),
              builder: (context, childToAnimate) {
                return Transform.scale(
                  scale: scaleTween.value,
                  child: Transform.rotate(
                    angle: pi * mControllerOne.value,
                    child: childToAnimate,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
