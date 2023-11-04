import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class RiveTest extends StatefulWidget {
  const RiveTest({super.key});

  @override
  State<RiveTest> createState() => _RiveTestState();
}

class _RiveTestState extends State<RiveTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rive Test'),
      ),
      body: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              colors: [
                Color(0xfffbc2eb),
                Color(0xffa6c1ee),
              ],
              stops: [0, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: rive.RiveAnimation.asset(
            'assets/rive/rating_animation.riv',
          )),
    );
  }
}
