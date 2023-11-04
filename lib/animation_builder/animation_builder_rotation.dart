import 'dart:math';

import 'package:flutter/material.dart';

class AnimationBuilerRotation extends StatefulWidget {
  const AnimationBuilerRotation({super.key});

  @override
  State<AnimationBuilerRotation> createState() =>
      _AnimationBuilerRotationState();
}

class _AnimationBuilerRotationState extends State<AnimationBuilerRotation>
    with TickerProviderStateMixin {
  late AnimationController mControllerOne;
  late Animation dropDownTween;

  @override
  void initState() {
    super.initState();
    mControllerOne =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..addStatusListener(
            (status) {},
          )
          ..repeat();

    // dropDownTween = Tween(begin: -400.0, end: 0.0).animate(mControllerOne);
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
                return Transform.rotate(
                  angle: pi * mControllerOne.value,
                  child: childToAnimate,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
